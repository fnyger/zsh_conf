#!/bin/zsh

# Install antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Create symlink to .zshrc
ln -s ~/.zsh/.zshrc ~/.zshrc

# Create symlink to zsh_plugins
ln -s ~/.zsh/zsh_plugins ~/.zsh_plugins.txt

source ~/.zshrc
