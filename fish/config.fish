set -gx PATH $PATH ~/bin
set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/.yarn/bin

set -gx LESS -Ri

alias clinotes="less ~/Documents/clinotes/cli-commands.txt"
alias eclinotes="nvim ~/Documents/clinotes/cli-commands.txt"
alias othnotes="less ~/MEGA/notes/others.txt"

alias tmux="env TERM=screen-256color tmux"
alias ls="lsd"
