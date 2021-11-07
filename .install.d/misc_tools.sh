for tool in htop ranger ncdu cowsay lolcat prettyping; do
    which $tool || sudo apt install -y $tool;
done
# https://askubuntu.com/a/1300824
which batcat || sudo apt install -y -o Dpkg::Options::="--force-overwrite" bat
which vidir || sudo apt install -y moreutils
which rg || sudo apt install -y ripgrep


if ! which lazygit >& /dev/null; then
  if which add-apt-repository >& /dev/null; then
    sudo add-apt-repository ppa:lazygit-team/release
    sudo apt-get update
    sudo apt-get install -y lazygit
  fi
fi
