for tool in htop ranger curl wget ncdu cowsay lolcat prettyping sl figlet toilet cmatrix; do
    which $tool || sudo apt install -y $tool;
done
# https://askubuntu.com/a/1300824
which batcat || sudo apt install -y -o Dpkg::Options::="--force-overwrite" bat
which rg || sudo apt install -y -o Dpkg::Options::="--force-overwrite" ripgrep
which vidir || sudo apt install -y moreutils

