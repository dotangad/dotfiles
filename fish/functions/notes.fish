function notes
  if test (count $argv) -lt 1
    echo "Note name missing"
  else if test $argv[1] = "-t"
    pushd ~/notes
    set note_file (date +%Y-%m-%d)".md"
    echo $note_file
    set -e note_file
  else if test $argv[1] = "-s"
    # TODO: search notes with fzf
    echo "search"
  else 
    pushd ~/notes
    set note_file (date +%Y-%m-%d)" "$argv[1]".md"
    echo $note_file
    set -e note_file
  end
end

