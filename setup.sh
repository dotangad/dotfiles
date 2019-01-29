pushd $HOME
# Back stuff up
[ -d "dotfiles" ] && mv dotfiles dotfiles.bak
[ -f ".zshrc" ] && mv .zshrc .zshrc.bak
[ -f ".tmux.conf" ] && mv .tmux.conf .tmux.conf.bak
[ -f ".vimrc" ] && mv .vimrc .vimrc.bak
[ -f ".vim" ] && mv .vim .vim.bak

# Clone repos
git clone https://github.com/dotangad/dotfiles dotfiles
git clone https://github.com/jimeh/tmux-themepack .tmux-themepack

# Symlink
ln -s dotfiles/.zshrc .zshrc
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.vim .vim
popd
