# Enable colors for `ls`
export CLICOLOR=1

# Enable colors in Zsh
autoload -U colors && colors

# Set terminal type
export TERM=xterm-256color

# Customize file type colors for `ls`
export LS_COLORS="*.jpg=33:*.jpeg=33:*.png=36:*.gif=36:*.bmp=36:*.svg=36:*.webp=36:*.py=32:*.sh=32:*.zip=34:*.tar=34:*.pdf=31:*.doc=31:*.docx=31:*.mp3=35:*.mp4=35:*.html=33:*.css=36"

# Customize the prompt
export PROMPT="%F{cyan}%n@%m%f:%F{yellow}%~%f$ "  # Username and PC name in teal, directory in yellow

# Use GNU `ls` with `LS_COLORS` (macOS)
alias ls="gls --color=auto"

# Add alias for reloading `.zshrc`
alias reload="source ~/.zshrc"

# Add alias for clearing the terminal
alias c="clear"

alias n="nvim"
alias cds="cd ~/.dotfiles/scripts/"
alias cdp="cd ~/Projects/"
