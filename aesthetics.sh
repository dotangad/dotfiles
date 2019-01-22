# Prompt
autoload -U promptinit;
promptinit;
# prompt pure;
prompt suse;

# Colors
autoload -U colors;
export CLICOLOR=1

# Prompt
setopt prompt_subst;
# export PROMPT='%m:%9c %n$ '
# export PROMPT='%9c/
# [ %n@%m ] > '
# export RPROMPT='%F{yellow}$(parse_git_branch)%F{none}'
export PROMPT='%F{blue}%n%F{white}@%F{green}%m%F{white}:%F{yellow}%c%F{white}$ '
