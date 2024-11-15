#!/bin/bash
# .______       _______         ________      _______. __    __  
# |   _  \     |   ____|       |       /     /       ||  |  |  | 
# |  |_)  |    |  |__    ______`---/  /     |   (----`|  |__|  | 
# |      /     |   __|  |______|  /  /       \   \    |   __   | 
# |  |\  \----.|  |____          /  /----.----)   |   |  |  |  | 
# | _| `._____||_______|        /________|_______/    |__|  |__|
# 
# Your kickstart to modular config zsh
# 
# Complete with Antigen as a Plugin Manager

source ~/.rezsh/env.sh
source ~/.rezsh/aliases.sh
source ~/.rezsh/plugins.sh
source ~/.rezsh/keymaps.sh

# NOTE: Extra libs eval/source
#
# These eval/source is used by extra package by interaction

# Enable Transient prompt for starship
source ~/.rezsh/transient_prompt.sh
# Sourcing zsh prompt
eval "$(starship init zsh)"
# Sourcing zoxide for better cd navigation
eval "$(zoxide init zsh)"
