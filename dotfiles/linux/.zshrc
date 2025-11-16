ZSH_THEME="bira"

plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        common-aliases
        docker
)

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi