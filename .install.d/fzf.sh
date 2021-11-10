if ! which fzf; then
    if grep "Ubuntu 18" /etc/lsb-release; then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install --key-bindings --completion --no-update-rc
        mkdir -p ~/.local/bin
        ln -sf ~/.fzf/bin/fzf ~/.local/bin/fzf
    else
        sudo apt install -y fzf
    fi
fi
