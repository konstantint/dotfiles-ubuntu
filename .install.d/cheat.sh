# https://github.com/cheat/cheat
# Look up latest version at https://github.com/cheat/cheat/releases

which cheat || {
    if [ "$(uname -m)" = "aarch64" ]; then
        ARCH="arm64"
    else
        ARCH="amd64"
    fi
    wget "https://github.com/cheat/cheat/releases/latest/download/cheat-linux-$ARCH.gz" -O /tmp/cheat.gz \
    && gunzip /tmp/cheat.gz \
    && chmod +x /tmp/cheat \
    && mkdir -p ~/.local/bin \
    && mv /tmp/cheat ~/.local/bin/cheat \
    && rm -f /tmp/cheat.gz
}

