function fish_user_key_bindings
  # Remap up key to first merge history to the current running shell then search
  bind \e\[A 'history merge ; up-or-search'
  bind -k up 'history merge ; up-or-search'
end
