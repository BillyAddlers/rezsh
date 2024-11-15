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

# Exporting path used by libraries
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Exporting graalvm installation inside .sdk directory
export JAVA_HOME=~/.sdk/graalvm-jdk-23.0.1+11.1
export PATH=$JAVA_HOME/bin:$PATH

# Exporting our main local binary PATH
export PATH="$HOME/.local/bin:$PATH"

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

