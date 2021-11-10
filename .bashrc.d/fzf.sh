#zsh-compatible

if [[ ! -z "$BASH" ]]; then
  [[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/completion.bash" 2> /dev/null
  [[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/key-bindings.bash" 2> /dev/null
fi

alias preview="fzf --preview 'batcat --color \"always\" {}'"

# add support for ctrl+o to open selected file in Vim 
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort' --border --height=50%"

# For Ubuntu 18.04:
if [ -z "$BASH" ]; then
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
else
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi
