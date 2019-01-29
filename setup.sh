pushd $HOME
# Back stuff up
echo "Backing up old files..."
[ -d "dotfiles" ] && mv dotfiles dotfiles.bak
[ -f ".zshrc" ] && mv .zshrc .zshrc.bak
[ -f ".tmux.conf" ] && mv .tmux.conf .tmux.conf.bak
[ -f ".vimrc" ] && mv .vimrc .vimrc.bak
[ -f ".vim" ] && mv .vim .vim.bak
[ -d ".tmux-themepack" ] && mv .tmux-themepack .tmux-themepack.bak

# Clone repos
echo "Cloning dotfiles repo..."
git clone https://github.com/dotangad/dotfiles dotfiles
git clone https://github.com/jimeh/tmux-themepack .tmux-themepack

# Symlink
echo "Symlinking files..."
ln -s dotfiles/.zshrc .zshrc
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.vim .vim
popd
