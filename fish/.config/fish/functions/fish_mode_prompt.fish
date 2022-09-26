function fish_mode_prompt
  set --local vi_mode_color
  set --local vi_mode_symbol

  switch $fish_bind_mode
    case default
      set vi_mode_color (set_color "#ff0000" --bold)
      set vi_mode_symbol "[λ]"
    case insert
      set vi_mode_color (set_color "#00ff00" --bold)
      set vi_mode_symbol "[λ]"
    case replace replace_one
      set vi_mode_color (set_color "#0000ff" --bold)
      set vi_mode_symbol "[λR"
    case visual
      set vi_mode_color (set_color "#0000ff" --bold)
      set vi_mode_symbol "[λV"
  end

  # string unescape "$vi_mode_color $vi_mode_symbol \x1b[0m "
  string unescape "$vi_mode_color $vi_mode_symbol $(set_color normal)"
end
