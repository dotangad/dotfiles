function notes
  if test (count $argv) -lt 1
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
  else if test $argv[1] = "-t"
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
    set note_file (date +%Y-%m-%d)".md"
    nvim $note_file
    set -e note_file
  else if test $argv[1] = "-s"
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
    # Pass all of stdin as one argument
    # https://unix.stackexchange.com/questions/91596/make-xargs-pass-as-first-parameter
    if test (count $argv) -gt 1
      set raw (fzf --print-query -1 -q $argv[2])
      if test (count $raw) -gt 1
        nvim $raw[2]
      else
        set note_file (date +%Y-%m-%d)" "$raw[1]".md"
        nvim $note_file
        set -e note_file
      end
      set -e raw
    else
      set raw (fzf --print-query)
      if test (count $raw) -gt 1
        nvim $raw[2]
      else
        set note_file (date +%Y-%m-%d)" "$raw[1]".md"
        nvim $note_file
        set -e note_file
      end
      set -e raw
    end
  else 
    if test (pwd) != $HOME"/notes"
      pushd ~/notes
    end
    set note_file (date +%Y-%m-%d)" "$argv[1..(count $argv)]".md"
    nvim $note_file
    set -e note_file
  end
end


