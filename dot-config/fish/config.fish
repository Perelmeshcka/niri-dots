# Create aliases
alias hx="helix"
alias n="nvim"
alias ls="lsd"
alias ntpdate-syn="sudo /usr/bin/ntpd -q -n -g -u ntp:ntp"

# TODO: Replace journal aliases after switching to OpenRC

# Display critical errors
alias syslog_emerg="sudo dmesg --level=emerg,alert,crit"

# Output common errors
alias syslog="sudo dmesg --level=err,warn"

# Print logs from x server
alias xlog='grep "(EE)\|(WW)\|error\|failed" ~/.local/share/xorg/Xorg.0.log'

# Remove archived journal files until the disk space they use falls below 100M
alias vacuum="journalctl --vacuum-size=100M"

# Make all journal files contain no data older than 2 weeks
alias vacuum_time="journalctl --vacuum-time=2weeks"

set -U fish_greeting
set fish_color_command green
set -gx EDITOR zeditor
set -gx VISUAL zeditor
set -gx BROWSER /usr/bin/firefox

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# export $(dbus-launch)
