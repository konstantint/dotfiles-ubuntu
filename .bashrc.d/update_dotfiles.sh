#!/bin/bash

function update_dotfiles {
  pushd ~/dotfiles
  git pull
  git submodule update --merge
  popd
  redotfiles
  reprofile
}

