echo "backing up old files...\n"

move() {
	FILENAME=$1

	echo "found $FILENAME"
	mv $FILENAME "$FILENAME.bak" && echo "moved $FILENAME to $FILENAME.bak"
	echo;
}

backup() {
	FILENAME=$1

	[ -e $FILENAME ] && move $FILENAME
	[ -h $FILENAME ] && move $FILENAME
}

symlink() {
	FILENAME=$1

	ln -s dotfiles/$FILENAME $FILENAME
}

backup dotfiles
backup .zshrc
backup .alacritty.yml
backup .gitconfig
backup .tmux.conf

echo "cloning dotfiles repo...\n"
git clone https://github.com/dotangad/dotfiles dotfiles

echo "symlinking files...\n"
symlink .zshrc
symlink .alacritty.yml
symlink .gitconfig
symlink .tmux.conf

echo "done"
