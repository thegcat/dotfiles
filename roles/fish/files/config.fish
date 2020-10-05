# Use the terminal-dark variant of bobthefish theme
set -g theme_color_scheme terminal2-dark
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g theme_display_git_master_branch yes
set -g theme_show_exit_status yes
set -g fish_prompt_pwd_dir_length 0

if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# save history after each command instead of on exit
function save_history --on-event fish_preexec
  history save
end

alias g='git'
alias cat='bat'
alias ping='prettyping --nolegend'

set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/mysql@5.6/lib"
set -gx CPPFLAGS "-I/usr/local/opt/mysql@5.6/include"

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
