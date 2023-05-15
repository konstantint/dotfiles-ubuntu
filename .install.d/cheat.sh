#zsh-compatible

# https://github.com/cheat/cheat
# Look up latest version at https://github.com/cheat/cheat/releases

which cheat || {
    wget https://github.com/cheat/cheat/releases/latest/download/cheat-linux-amd64.gz -O /tmp/cheat-linux-amd64.gz \
    && gunzip /tmp/cheat-linux-amd64.gz \
    && chmod +x /tmp/cheat-linux-amd64 \
    && mkdir -p ~/.local/bin \
    && mv /tmp/cheat-linux-amd64 ~/.local/bin/cheat \
    && rm -f /tmp/cheat-linux-amd64.gz
}

