#!/bin/bash

# Check if ~/.antigen.zsh exists
if [ ! -f "$HOME/.antigen.zsh" ]; then
  echo "Antigen not found. Downloading..."
  curl -L git.io/antigen > "$HOME/.antigen.zsh"
  echo "Antigen downloaded successfully to ~/.antigen.zsh"
fi
