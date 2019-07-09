alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias la="ls -la"
alias rc="source $HOME/.zshrc"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

alias startApache="/Applications/MAMP/bin/startApache.sh"
alias stopApache="/Applications/MAMP/bin/stopApache.sh"
alias startMysql="/Applications/MAMP/bin/startMysql.sh"
alias stopMysql="/Applications/MAMP/bin/stopMysql.sh"

alias gohome="cd /Users/dotangad/code/go/src/github.com/dotangad/"

alias g="hub"
alias gaa="git add --all"
alias gst="git status"
alias gp="git push"
func gcmsg () {
	git commit -m $1;
}
func gpu () {
	git push -u $1 $2;
}

func colours () {
	for i in {0..255}; do;
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n";
	done;
}
