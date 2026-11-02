source ~/.zsh/.antidote/antidote.zsh
antidote load
export PATH="$HOME/.local/bin:$PATH"

# Accept zsh-autosuggestions with Ctrl+space
bindkey '^ ' autosuggest-accept

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

alias rmiden='find . -name "*:Zone.Identifier" -type f -delete'

# Default editor
export EDITOR=vim
export VISUAL=vim
