pushd $HOME
echo "Backing up old files..."
[ -d "dotfiles" ] && mv dotfiles dotfiles.bak
[ -f ".bash_profile" ] && mv .bash_profile .bash_profile.bak
[ -f ".tmux.conf" ] && mv .tmux.conf .tmux.conf.bak
[ -f ".vimrc" ] && mv .vimrc .vimrc.bak
[ -d ".vim" ] && mv .vim .vim.bak
[ -d ".tmux-themepack" ] && mv .tmux-themepack .tmux-themepack.bak

echo "Cloning dotfiles repo..."
git clone https://github.com/dotangad/dotfiles dotfiles
git clone https://github.com/jimeh/tmux-themepack .tmux-themepack

echo "Symlinking files..."
ln -s dotfiles/.bash_profile .bash_profile
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.vim .vim
popd
