function cpcmd --description 'Copy last run command to clipboard'
history | head -n 1 | pbcopy
end
