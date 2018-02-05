#!/usr/bin/env zsh

source "$ZSH_CUSTOM/lib/lazy_load.sh"

nvm_init(){
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
}

# create hooks for commands 'nvm', and 'node'
lazy_load nvm_init nvm node
