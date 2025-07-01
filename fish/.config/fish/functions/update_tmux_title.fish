function update_tmux_title --on-variable PWD
    echo -ne "\033]2; $PWD \007"
end
