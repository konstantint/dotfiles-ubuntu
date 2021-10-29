#!/bin/bash

function update_dotfiles {
  pushd ~/dotfiles
  git pull --recurse-submodules
  popd
  redotfiles
  reprofile
}

