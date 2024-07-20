function epub_to_pdf
    if test (count $argv) -eq 0
        echo "Usage: epub_to_pdf <filename>"
        return 1
    end

    set filename $argv[1]

    if not test -f $filename
        echo "File '$filename' not found."
        return 1
    end

    # Extract the basename of the file
    set basename (basename $filename)

    # Replace `your_command` with the actual command you want to run
    pandoc -f epub -t pdf -i $filename -o $basename
end
