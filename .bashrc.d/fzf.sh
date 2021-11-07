#zsh-compatible

if [[ ! -z "$BASH" ]]; then
  [[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/completion.bash" 2> /dev/null
  [[ $- == *i* ]] && source "/usr/share/doc/fzf/examples/key-bindings.bash" 2> /dev/null
fi

alias preview="fzf --preview 'batcat --color \"always\" {}'"

# add support for ctrl+o to open selected file in Vim 
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort' --border --height=50%"

