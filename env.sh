#!/bin/bash

# NOTE: Basics export mostly used by compilers or terminals
#
# These exports aren't that much important since they most likely can be handled
# by compiler flags.
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch $(uname -m)"

# Defining the default editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export GPG_TTY=$(tty)

# Exporting default libvirt uri
export LIBVIRT_DEFAULT_URI=qemu:///system

# Exporting path used by libraries
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Exporting graalvm installation inside .sdk directory
export JAVA_HOME=~/Library/graalvm-jdk/23
export PATH=$JAVA_HOME/bin:$PATH

# Exporting cmdline-tools used by android sdk
export ANDROID_HOME=~/Library/android/sdk
export ANDROID_TOOLS_PATHS=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/cmdline-tools/bin
export PATH=$ANDROID_TOOLS_PATHS:$PATH

# Exporting our main local binary PATH
export PATH="$HOME/.local/bin:$PATH"

# Exporting Rust Cargo's binary PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Exporting FZF default configuration
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --strip-cwd-prefix --exclude .git "

export FZF_DEFAULT_OPTS="--height 50% --layout default --border --color=hl:#2dd4bf"

export FZF_TMUX_OPTS=" -p90%,70% "

export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# NOTE: Exports used by libraries
#
# These exports are essentials for development.

# bun completions
[ -s "/home/riichi/.bun/_bun" ] && source "/home/riichi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
. "/home/riichi/.deno/env"

# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/riichi/.zsh/completions:"* ]]; then export FPATH="/home/riichi/.zsh/completions:$FPATH"; fi

