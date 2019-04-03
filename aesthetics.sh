# Prompt
unset RPROMPT;
unset PROMPT;
# autoload -U promptinit;
# promptinit;
# prompt pure;
# prompt suse;

# Colors
autoload -U colors;
export CLICOLOR=1;

# Prompt
setopt prompt_subst;
# export PROMPT='%F{blue}%n%F{white}@%F{green}%m%F{white}:%F{yellow}%c%F{white}$ ';
# export PROMPT="~/%c > ";
# export RPROMPT="${parse_git_branch}";
export PROMPT="%c > ";
