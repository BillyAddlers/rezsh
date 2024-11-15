#!/bin/bash
# NOTE: Loading plugins using Antigen
#
# These plugins are required for zsh to working properly

# Loading plugin pack from omz
antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle fzf
antigen bundle dotenv

# Needs to be installed first in host OS, see https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle z-shell/zsh-eza@main

# Applying the plugins
antigen apply
