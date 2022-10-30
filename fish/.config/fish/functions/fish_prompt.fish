function fish_prompt --description 'Write out the prompt'
    set -g __fish_git_prompt_show_informative_status 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showupstream "informative"
    set -g __fish_git_prompt_showstashstate 1

    set -g __fish_git_prompt_char_upstream_ahead "↑"
    set -g __fish_git_prompt_char_upstream_behind "↓"
    set -g __fish_git_prompt_char_upstream_prefix " "
    
    set -g __fish_git_prompt_char_stagedstate "●"
    set -g __fish_git_prompt_char_dirtystate "+"
    set -g __fish_git_prompt_char_untrackedfiles "..."
    set -g __fish_git_prompt_char_conflictedstate "✖"
    set -g __fish_git_prompt_char_cleanstate "✔"

    set -g __fish_git_prompt_char_stateseparator " "
    
    set -g __fish_git_prompt_color_branch "#888888"
    set -g __fish_git_prompt_color_dirtystate red --bold
    set -g __fish_git_prompt_color_stagedstate yellow
    set -g __fish_git_prompt_color_invalidstate red --bold
    set -g __fish_git_prompt_color_untrackedfiles blue --bold
    set -g __fish_git_prompt_color_cleanstate $fish_clor_normal
    set -g __fish_git_prompt_color_stashstate "#ffac00" --bold
    set -g __fish_git_prompt_color_upstream magenta --bold

    set -l color_cwd
    set -l suffix
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        else
            set color_cwd $fish_color_cwd
        end
        set suffix '#'
    else
        set color_cwd "#fd971f" --bold
        set suffix '>>'
    end

    # PWD
    set_color $color_cwd
    echo -n (prompt_pwd)
    set_color normal

    printf '%s ' (fish_vcs_prompt)

    set_color "#66d9ef" --bold
    echo -n "$suffix "
    set_color normal
end
