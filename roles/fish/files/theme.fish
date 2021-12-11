# Use the terminal-dark variant of bobthefish theme
set -g theme_color_scheme terminal2-dark
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g theme_display_git_master_branch yes
set -g theme_show_exit_status yes
set -g fish_prompt_pwd_dir_length 0

# 256-color shenanigans
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# bobthefish has its own virtual env prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
