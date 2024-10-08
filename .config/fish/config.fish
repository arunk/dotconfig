if status is-interactive
    # Commands to run in interactive sessions can go here
    if test (grep microsoft /proc/version)
        set -gx WINH /mnt/c/Users/arunk
        set -gx DISPLAY (ipconfig.exe | grep 'vEthernet (WSL' -A4 | cut -d":" -f 2 | tail -n1 | sed -e 's/\s*//g'):0
        set -gx LIBGL_ALWAYS_INDIRECT 1
    end
    rvm default
    abbr --add dotdot --regex '^\.\.+$' --function multicd

    if not test -d $XDG_RUNTIME_DIR 
        sudo mkdir $XDG_RUNTIME_DIR
        sudo mkdir $XDG_RUNTIME_DIR/dconf
        sudo chown $USER:$USER -R $XDG_RUNTIME_DIR
    end
end
