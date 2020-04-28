alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias la="ls -la"
alias rc="source $HOME/.zshrc"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

alias startApache="/Applications/MAMP/bin/startApache.sh"
alias stopApache="/Applications/MAMP/bin/stopApache.sh"
alias startMysql="/Applications/MAMP/bin/startMysql.sh"
alias stopMysql="/Applications/MAMP/bin/stopMysql.sh"
alias mysql="/Applications/MAMP/Library/bin/mysql"

alias g="git"
alias pcpy="pwd | pbcopy"

func colours () {
	for i in {0..255}; do;
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n";
	done;
}
