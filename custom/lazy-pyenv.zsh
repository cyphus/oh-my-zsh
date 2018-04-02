#!/usr/bin/env zsh

source "$ZSH_CUSTOM/lib/lazy_loader.sh"

pyenv_init() {
    export PYENV_INIT=true
    source "$ZSH/plugins/pyenv/pyenv.plugin.zsh"
}

lazy_load pyenv_init pyenv 2to3 easy_install pip python python2 python3 tmuxp
