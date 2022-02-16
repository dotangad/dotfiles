function pg_start --wraps='launchctl load ~/Library/LaunchAgents' --description 'alias pg_start=launchctl load ~/Library/LaunchAgents'
  launchctl load ~/Library/LaunchAgents $argv; 
end
