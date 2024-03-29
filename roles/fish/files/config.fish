# save history after each command instead of on exit
function save_history --on-event fish_preexec
  history save
end

alias g='git'
if type -q bat
  alias cat='bat'
else if type -q batcat
  alias cat='batcat'
end
if type -q lsd
  alias ls='lsd'
end
alias ping='prettyping --nolegend'
