#!/usr/bin/env zsh

source "$ZSH_CUSTOM/lib/lazy_load.sh"

pyenv_init() {
    export PYENV_INIT=true
    source "$ZSH/plugins/pyenv/pyenv.plugin.zsh"
}

lazy_load pyenv_init pyenv
