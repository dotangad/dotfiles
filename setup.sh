pushd $HOME
echo "Backing up old files..."
[ -d "dotfiles" ] && mv dotfiles dotfiles.bak
[ -f ".zshrc" ] && mv .zshrc .zshrc.bak
[ -f ".tmux.conf" ] && mv .tmux.conf .tmux.conf.bak
[ -f ".vimrc" ] && mv .vimrc .vimrc.bak
[ -d ".vim" ] && mv .vim .vim.bak

echo "Cloning dotfiles repo..."
git clone https://github.com/dotangad/dotfiles dotfiles

echo "Symlinking files..."
ln -s dotfiles/.zshrc .zshrc
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vimrc .vimrc
ln -s dotfiles/.vim .vim
popd
