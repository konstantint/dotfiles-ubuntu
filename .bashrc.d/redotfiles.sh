#zsh-compatible

if [ -z "$BASH" ]; then
  alias reprofile=". ~/.zshrc"
else
  alias reprofile=". ~/.profile"
fi

alias redotfiles="make -C ~/dotfiles install"

