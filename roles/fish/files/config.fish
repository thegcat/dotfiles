# save history after each command instead of on exit
function save_history --on-event fish_preexec
  history save
end

alias g='git'
alias cat='bat'
alias ls='lsd'
alias ping='prettyping --nolegend'
