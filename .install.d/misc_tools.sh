for tool in htop ranger ncdu cowsay lolcat prettyping; do
    which $tool || sudo apt install -y $tool;
done
which batcat || sudo apt install -y bat
which vidir || sudo apt install -y moretools
which rg || sudo apt install -y ripgrep


if ! which lazygit >& /dev/null;
  if which add-apt-repository >& /dev/null; then
    sudo add-apt-repository ppa:lazygit-team/release
    sudo apt-get update
    sudo apt-get install -y lazygit
  fi
fi
