switch (uname)
  case Darwin
    fish_add_path /usr/local/bin
    fish_add_path /usr/local/sbin
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.composer/vendor/bin
    fish_add_path /opt/homebrew/opt/mysql-client/bin
    fish_add_path /Users/angad/Library/Python/3.8/bin
    fish_add_path /Users/Shared/DBngin/mysql/8.0.27/bin
    fish_add_path /Users/Shared/DBngin/redis/6.2.1/bin
    
    # GPG Stuff
    # if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n (pgrep gpg-agent) ]
    #     source ~/.gnupg/.gpg-agent-info
    #     export GPG_AGENT_INFO
    # else
    #     eval (gpg-agent --daemon ~/.gnupg/.gpg-agent-info)
    # end
    
    # GPG ioctl error
    # https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
    set -x GPG_TTY (tty)

    # pnpm
    set -gx PNPM_HOME "/Users/angad/Library/pnpm"
    set -gx PATH "$PNPM_HOME $PATH"
end
