#!/usr/bin/env zsh

# if nvm is a function, it's already loaded or already lazy loaded
if type nvm >/dev/null 2>&1; then
    return
fi

source "$ZSH_CUSTOM/lib/lazy_loader.sh"

nvm_init(){
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
}

# create hooks for commands shimmed by nvm
lazy_load nvm_init nvm node eslint flow npm elm
