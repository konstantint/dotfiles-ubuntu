for tool in htop ranger ncdu cowsay lolcat prettyping; do
    which $tool || sudo apt install -y $tool;
done
which batcat || sudo apt install -y bat
which vidir || sudo apt install -y moretools

