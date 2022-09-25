switch (uname)
  case Linux
    set PATH $HOME/.config/composer/vendor/bin $PATH
    set PATH /usr/local/go/bin $PATH
    
    function pacmd_bluetooth_index
      # Find bluetooth card and index
      # From: https://gist.github.com/egelev/2e6b57d5a8ba62cf6df6fff2878c3fd4
      echo (pacmd list-cards | grep "bluez_card" -B1 | grep "index" | awk '{print $2}')
    end
    
    function pacmd_list_bluetooth_profiles
      pacmd list-cards | grep "index: "(pacmd_bluetooth_index) -A25 | grep "active profile" -B10
    end
    
    set PATH $HOME/snap/flutter/common/flutter/bin $PATH
    set PATH $HOME/.pub-cache/bin $PATH
    set PATH /usr/lib/dart/bin $PATH
end
