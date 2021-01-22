function fish_prompt --description 'Write out the prompt'
    # Save our status
    set -l last_pipestatus $pipestatus

    set -l suffix
    switch $fish_bind_mode
      case default
        set suffix '<'
      case insert
        set suffix '>'
      case replace_one
        set suffix '^'
      case visual
        set suffix 'V'
      case '*'
        echo '?'
    end

    echo -n -s (set_color 608cc3) (prompt_pwd) (set_color normal) \
        (fish_vcs_prompt) \
        (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) \
        (set_color --bold $fish_color_status) $last_pipestatus) \
        (set_color normal) "$suffix "
end
