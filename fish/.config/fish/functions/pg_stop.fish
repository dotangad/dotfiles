function pg_stop --wraps='launchctl unload ~/Library/LaunchAgents' --description 'alias pg_stop=launchctl unload ~/Library/LaunchAgents'
  launchctl unload ~/Library/LaunchAgents $argv; 
end
