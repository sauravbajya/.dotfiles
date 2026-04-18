source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# opencode
fish_add_path /home/bajra/.opencode/bin



#android-studio
set -gx PATH $PATH /opt/android-studio/bin


#nvim-scratch
alias nvim-scratch="env NVIM_APPNAME=nvim-scratch nvim"
