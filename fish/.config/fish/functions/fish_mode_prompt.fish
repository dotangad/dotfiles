function fish_mode_prompt
    set --local vi_mode_color
    set --local vi_mode_symbol

    switch $fish_bind_mode
        case default
            set vi_mode_color red
            set vi_mode_symbol NO
        case insert
            set vi_mode_color "#f6c177"
            set vi_mode_symbol "::"
        case replace replace_one
            set vi_mode_color "#66d9ef"
            set vi_mode_symbol RE
        case visual
            set vi_mode_color "#E6DB74"
            set vi_mode_symbol VI
    end

    # string unescape "$vi_mode_color $vi_mode_symbol \x1b[0m "
    string unescape "$(set_color --bold "#2977f5")λ$(set_color $vi_mode_color) $vi_mode_symbol $(set_color normal)"
end
