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

# Dependencies:
# antigen (embedded)
# bun
# deno
# graalvm (change settings in env.sh)
# go
#

# Sourcing our Antigen Library.
# Check if Antigen is installed properly.
source ~/.rezsh/check_antigen.sh
source ~/.antigen.zsh

# Our config's entry point.
source ~/.rezsh/init.sh

# Hyprland Colorscheme integration
source ~/.config/zshrc.d/dots-hyprland.zsh

# Starting Hyprland
source ~/.config/zshrc.d/auto-Hypr.sh
