function notes
  if test (count $argv) -lt 1
    echo "Note title missing"
  else if test $argv[1] = "-t"
    pushd ~/notes
    set note_file (date +%Y-%m-%d)".md"
    nvim $note_file
    set -e note_file
  else if test $argv[1] = "-s"
    # What I really want is an fzf prompt which searches for existing notes and
    # creates one if it doesn't exist
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
    # Pass all of stdin as one argument
    # https://unix.stackexchange.com/questions/91596/make-xargs-pass-as-first-parameter
    fzf | xargs -I{} nvim {}
  else 
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
    set note_file (date +%Y-%m-%d)" "$argv[1]".md"
    nvim $note_file
    set -e note_file
  end
end


