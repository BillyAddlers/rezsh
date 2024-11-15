#!/bin/bash
# Check if --override flag is passed
OVERRIDE=false
if [[ "$1" == "--override" ]]; then
  OVERRIDE=true
fi

# Check if ~/.zshrc exists
if [ -f "$HOME/.zshrc" ]; then
  echo "Renaming existing ~/.zshrc to ~/old.zshrc..."

  # Check if ~/old.zshrc already exists
  if [ -f "$HOME/old.zshrc" ]; then
    if [ "$OVERRIDE" = true ]; then
      echo "Override flag provided. Proceeding with copying..."
    else
      echo "~/old.zshrc already exists. Skipping copying example.zshrc."
      exit 0
    fi
  fi

  # Rename ~/.zshrc to ~/old.zshrc
  mv "$HOME/.zshrc" "$HOME/old.zshrc"
fi

# Copy ~/.rezsh/example.zshrc to ~/.zshrc
echo "Copying ~/.rezsh/example.zshrc to ~/.zshrc..."
cp "$HOME/.rezsh/example.zshrc" "$HOME/.zshrc"

# Check for starship configuration
STARSHIP_CONFIG="$HOME/.config/starship.toml"
STARSHIP_TRANSIENT_CONFIG="$HOME/.config/starship-transient.toml"

# Create ~/.config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Check if ~/.config/starship.toml exists
if [ ! -f "$STARSHIP_CONFIG" ]; then
  echo "Copying ~/.rezsh/example.starship.toml to ~/.config/starship.toml..."
  cp "$HOME/.rezsh/example.starship.toml" "$STARSHIP_CONFIG"
else
  echo "Starship configuration already exists at ~/.config/starship.toml"
fi

# Check if ~/.config/starship-transient.toml exists
if [ ! -f "$STARSHIP_TRANSIENT_CONFIG" ]; then
  echo "Copying ~/.rezsh/example.starship-transient.toml to ~/.config/starship-transient.toml..."
  cp "$HOME/.rezsh/example.starship-transient.toml" "$STARSHIP_TRANSIENT_CONFIG"
else
  echo "Starship transient configuration already exists at ~/.config/starship-transient.toml"
fi

echo "Configuration setup complete!"
