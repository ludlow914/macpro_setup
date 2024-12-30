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

# Alias set up by DC
alias ls="gls --color=auto"
alias reload="source ~/.zshrc"
alias c="clear"
alias n="nvim"
alias cds="cd ~/.dotfiles/scripts/"
alias cdp="cd ~/Projects/"

# Tmux
export TMUX_CONFIG="$HOME/.config/tmux/.tmux.conf"

# Initialize Starship prompt
export STARSHIP_CONFIG="~/.config/starship/starship.toml"
eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
