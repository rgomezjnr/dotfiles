#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Autostart X at login e.g. for i3 window manager
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    exec startx
fi

eval "$(ssh-agent -s)"

set -o vi

PS1="\[$(tput sgr0)\][\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput setaf 13)\]\h \[$(tput bold)\]\[$(tput setaf 4)\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

export EDITOR="vim"
export PYTHONIOENCODING=UTF-8
export BULB_IP="192.168.0.101"
export MIMI_IP="192.168.0.104"
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export ANDROID_HOME="$HOME/Android/Sdk"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

alias la='ls -a'
alias ll='ls -lh'
alias lal='ls -alh'
alias ls='ls --color=auto'
alias view='vim -R'
alias clr='clear'
alias hist='history'
alias bulbon='wizcon -si 11 ${BULB_IP} ON'
alias bulboff='wizcon -si 11 ${BULB_IP} OFF'
alias bulbhalf='wizcon -b 100 ${BULB_IP} ON'
alias bulbcozy='wizcon -si 6 ${BULB_IP} ON'
alias dlpl='spotify_dl --no-overwrites --multi_core 8 --url $1'
alias code='codium'
alias cheat=$'
    echo "CHEAT SHEET"
    echo "==========="
    echo "ALIAS"
    alias
    echo
    echo "POK3R"
    echo "Fn + E - email"
    echo "Fn + S - volume decrease"
    echo "Fn + D - volume increase"
    echo "Fn + F - volume mute"
    echo
    echo "ARCH"
    echo "AUR"
    echo "Build package"
    echo "1. cd ~/builds"
    echo "2. git clone or pull AUR git repo package"
    echo "3. Review PKGBUILD"
    echo "4. Acquire a PGP public key if needed"
    echo "5. makepkg -s"
    echo "6. pacman -U package_name_-_version_-_architecture_.pkg.tar.zst"
    echo
    echo "GIT"
    git alias
    echo'
#    echo "Fn + W - previous track"
#    echo "Fn + E - next track"
#    echo "Fn + R - play/pause"

source .bashrc_private

