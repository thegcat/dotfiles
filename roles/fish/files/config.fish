# save history after each command instead of on exit
function save_history --on-event fish_preexec
  history save
end

alias g='git'
alias cat='bat'
alias ls='lsd'
alias ping='prettyping --nolegend'

set -g fish_user_paths "/opt/homebrew/opt/mysql@5.6/bin" $fish_user_paths
set -gx LDFLAGS "-L/opt/homebrew/opt/mysql@5.6/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/mysql@5.6/include"
