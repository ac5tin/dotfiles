set -gx PATH $PATH ~/bin
set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/.yarn/bin
set -gx PATH $PATH ~/go/bin

set -gx LESS -Ri

set -gx VISUAL nvim

alias clinotes="less ~/Documents/clinotes/cli-commands.txt"
alias eclinotes="lvim ~/Documents/clinotes/cli-commands.txt"
alias othnotes="less ~/MEGA/notes/others.txt"

alias tmux="env TERM=screen-256color tmux"
alias ls="lsd"
alias gh_token="bw get item github |jq -r '.fields[]|select(.name == \"token\")|.value'"
alias jira="jira-terminal"


function jira-done
    jira-terminal transition -t $argv done
end

function jira-assign
    jira-terminal assign -t $argv[1] -u $argv[2]
end
