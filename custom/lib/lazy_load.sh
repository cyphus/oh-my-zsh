#!/usr/bin/env bash
# This file aids in lazy loading tools that would otherwise be loaded on each
# new shell.

# Delay loading a tool until one or more commands are called. A tool can be a
# command-line tool, a service, or any set of steps that need to be deferred.
#
# Given an initialization function and a list of commands to trigger the
# initialization, lazy_load generates a self-destroying stub function for each
# command that runs the initialization before calling the underlying command.
function lazy_load(){
    # name of the function that will be called to initialize the tool
    local init_func=$1
    shift
    # one or more commands to trigger initialization of the tool
    local cmd_list=( "$@" )

    # create a stub function for each command
    for cmd in "${cmd_list[@]}"; do
        # define cmd as a function
        eval "function $cmd() {
            echo \"Lazy loading $cmd...\"
            # destroy all stub functions related to init_func
            unset -f ${cmd_list[@]}
            # run init_func
            $init_func
            # run the command this stub was wrapping
            $cmd \$@
        }"
    done
}
