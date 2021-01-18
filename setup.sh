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

symlinkhome() {
	FILENAME=$1

	ln -s dotfiles/$FILENAME $FILENAME
}

symlinkconfig() {
	FILENAME=$1

	ln -s dotfiles/$FILENAME .config/$FILENAME
}

backup dotfiles
backup .zshrc
backup .alacritty.yml
backup .gitconfig
backup .tmux.conf
backup .config/fish
backup .config/lf

echo "cloning dotfiles repo...\n"
git clone https://github.com/dotangad/dotfiles dotfiles

echo "symlinking files...\n"
symlinkhome .zshrc
symlinkhome .alacritty.yml
symlinkhome .gitconfig
symlinkhome .tmux.conf
symlinkconfig fish
symlinkconfig lf
symlinkconfig kitty

echo "done"
