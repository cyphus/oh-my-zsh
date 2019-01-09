#!/usr/bin/env zsh

# if pyenv is a function, it's already loaded or already lazy loaded
if functions pyenv >/dev/null 2>&1; then
    return
fi

source "$ZSH_CUSTOM/lib/lazy_loader.sh"

pyenv_init() {
    # PYENV_INIT is used by the bullettrain zsh theme to detect whether pyenv
    # is loaded.
    PYENV_INIT=true
    source "$ZSH/plugins/pyenv/pyenv.plugin.zsh"
}

lazy_load pyenv_init pyenv 2to3 easy_install pip python python2 python3 tmuxp
