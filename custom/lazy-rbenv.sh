#!/usr/bin/env zsh

source "$ZSH_CUSTOM/lib/lazy_loader.sh"

rbenv_init() {
    source "$ZSH/plugins/rbenv/rbenv.plugin.zsh"
}

lazy_load rbenv_init rbenv bundle bundler gem irb rake ruby
