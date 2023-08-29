# disable fish greeter
function fish_greeting
end


set -gx PATH $PATH ~/bin
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/.yarn/bin
set -gx PATH $PATH ~/go/bin
set -gx PATH $PATH ~/.linkerd2/bin

set -gx LESS -Ri

set -gx VISUAL lvim

alias clinotes="bat -p ~/Documents/clinotes/cli-commands.txt"
alias eclinotes="lvim ~/Documents/clinotes/cli-commands.txt"

alias tmux="env TERM=screen-256color tmux"
alias ls="lsd"
alias less="bat -p"

# github token
# - gh_token |xsel -bi
alias gh_token="bw get item github |jq -r '.fields[]|select(.name == \"token\")|.value'"

# nnn
set -gx NNN_PLUG 'f:finder;o:fzopen;p:mocplay;d:diffs;v:imgview'



# Starship (must be at the end)
starship init fish | source
