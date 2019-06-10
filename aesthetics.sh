# Colors
autoload -U colors;
export CLICOLOR=1;

# Prompt
unset RPROMPT;
unset PROMPT;
setopt prompt_subst;
export PROMPT="$fg[none]%m:$fg[cyan]$(get_pwd) $fg[none]%n$ ";
