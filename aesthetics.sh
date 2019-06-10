# Colors
autoload -U colors;
export CLICOLOR=1;

# Prompt
unset RPROMPT;
unset PROMPT;
setopt prompt_subst;
export PROMPT="%m:%1d %n$ ";
