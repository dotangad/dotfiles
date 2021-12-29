function notify -a content title subtitle sound --description "Send notification"
  if test -z "$content" || test -z "$title"
    echo "Usage: notify <content> <title> <subtitle> <sound>"
    return 1
  end

  set command "display notification \"$content\" with title \"$title\""

  if test -n "$subtitle"
    set command "$command subtitle \"$subtitle\""
  end

  if test -n sound
    set command "$command sound name \"Pong\""
  else
    set command "$command sound name \"$sound\""
  end

  osascript -e "$command"
  return
end
