# 256-color shenanigans
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# Use powerline for the prompt
set fish_function_path $fish_function_path "/opt/homebrew/lib/python3.9/site-packages/powerline/bindings/fish"
powerline-setup

function _powerline_set_columns --on-signal WINCH
  set -g _POWERLINE_COLUMNS (_powerline_columns)
end
