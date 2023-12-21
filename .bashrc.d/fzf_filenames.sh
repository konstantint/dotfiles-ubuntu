#zsh-compatible

# Opens a fzf selector to pick from filenames present in the current window

__filename_sel() {
    tmux capture-pane -pJ -S 0 | grep -o '/[^" '"'"']*' | fzf
}

fzf-filenames-widget() {
    LBUFFER+="$(__filename_sel)"
    local ret=$?
    zle reset-prompt
    return $ret
}
zle -N fzf-filenames-widget
bindkey ^f fzf-filenames-widget

