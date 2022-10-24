function cphist --description 'Search history and copy selected command to clipboard'
history | fzf | pbcopy
end
