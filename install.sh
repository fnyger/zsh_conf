#!/bin/zsh

# Abort if existing config files are present
for f in ~/.zshrc ~/.zsh_plugins.txt; do
  if [[ -e "$f" || -L "$f" ]]; then
    echo "Error: $f already exists. Please remove it and re-run this script." >&2
    exit 1
  fi
done

# Install antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~/.zsh}/.antidote

# Create symlink to .zshrc
ln -s ~/.zsh/.zshrc ~/.zshrc

# Create symlink to zsh_plugins
ln -s ~/.zsh/zsh_plugins ~/.zsh_plugins.txt

source ~/.zshrc
