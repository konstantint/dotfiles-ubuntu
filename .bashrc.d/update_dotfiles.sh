#zsh-compatible

function update_dotfiles {
  pushd ~/dotfiles
  git pull
  git submodule update --merge --init --recursive
  popd
  redotfiles
  reprofile
}

