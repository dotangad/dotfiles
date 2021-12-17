# dotangad's (neo)vim

1. Clone this repo
```sh
mv $HOME/.config/nvim $HOME/.config/nvim.bak >> /dev/null
git clone https://github.com/dotangad/dotvim $HOME/.config/nvim
```

2. Install `vim-plug`
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## TODO
- [x] Clean up themes, move to Monokai
- [ ] Add transparency to modeline, remove line/character count
- [ ] <https://www.youtube.com/watch?v=ViHgyApE9zM>
- [ ] <https://www.vimfromscratch.com/articles/vim-for-ruby-and-rails-in-2019/>
- [ ] <https://github.com/nvim-telescope/telescope.nvim>
- [x] <https://github.com/iamcco/coc-flutter>
- [ ] <https://thoughtbot.com/blog/how-to-do-90-of-what-plugins-do-with-just-vim>
