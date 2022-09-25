function fish_user_key_bindings
    fish_vi_key_bindings
    # commandline -P -> check if paging
    # fish_bind_mode sets bind mode (default/insert/replace/visual)
    # default -> normal mode
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    bind -M visual jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
