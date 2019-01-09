#!/usr/bin/env zsh

# if rbenv is a function, it's already loaded or already lazy loaded
if functions rbenv >/dev/null 2>&1; then
    return
fi

source "$ZSH_CUSTOM/lib/lazy_loader.sh"

rbenv_init() {
    source "$ZSH/plugins/rbenv/rbenv.plugin.zsh"
}

lazy_load rbenv_init rbenv bundle bundler gem irb rake ruby
