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
alias rs='redshift -x'
alias rsclr='redshift -x'
alias rsoff='redshift -x'
alias rson='redshift -PO 4000'
alias rslower='redshift -PO 3000'
alias rslow='redshift -PO 3500'
alias rshigh='redshift -PO 4000'
alias rsauto='redshift -Po'
alias dlpl='spotify_dl --no-overwrites --multi_core 8 --url $1'
alias code='codium'
alias monoff='xset -dpms'
#alias monoff='xset s off && xset -dpms'

export COLOR_NO_COLOR="$(tput sgr0)"
export COLOR_BLACK="$(tput setaf 0)"
export COLOR_GRAY="$(tput setaf 8)"
export COLOR_RED="$(tput setaf 1)"
export COLOR_LIGHT_RED="$(tput setaf 9)"
export COLOR_GREEN="$(tput setaf 2)"
export COLOR_LIGHT_GREEN="$(tput setaf 10)"
export COLOR_BROWN="$(tput setaf 3)"
export COLOR_YELLOW="$(tput setaf 11)"
export COLOR_BLUE="$(tput setaf 4)"
export COLOR_LIGHT_BLUE="$(tput setaf 12)"
export COLOR_PURPLE="$(tput setaf 5)"
export COLOR_LIGHT_PURPLE="$(tput setaf 13)"
export COLOR_CYAN="$(tput setaf 6)"
export COLOR_LIGHT_CYAN="$(tput setaf 14)"
export COLOR_LIGHT_GRAY="$(tput setaf 7)"
export COLOR_WHITE="$(tput setaf 15)"
export COLOR_HEADER="${COLOR_YELLOW}"
export COLOR_SUB_HEADER="${COLOR_LIGHT_CYAN}"

alias cheat=$'
    echo "${COLOR_RED}CHEAT SHEET${COLOR_NO_COLOR}"
    echo "${COLOR_NO_COLOR}===========${COLOR_NO_COLOR}"
    echo "${COLOR_HEADER}ALIAS${COLOR_NO_COLOR}"
    alias | sed "s/^alias/ ${COLOR_CYAN}&${COLOR_NO_COLOR}/" # Colorize "alias" keyword
    echo

    echo "${COLOR_HEADER}POK3R${COLOR_NO_COLOR}"
    echo "Fn + E - email"
    echo "Fn + S - volume decrease"
    echo "Fn + D - volume increase"
    echo "Fn + F - volume mute"
    echo

    echo "${COLOR_HEADER}ARCH AUR${COLOR_NO_COLOR}"
    echo "1. cd ~/builds"
    echo "2. git clone or pull AUR git repo package"
    echo "3. Review PKGBUILD"
    echo "4. Acquire a PGP public key if needed"
    echo "5. makepkg -s"
    echo "6. pacman -U package_name_-_version_-_architecture_.pkg.tar.zst"
    echo

    echo "${COLOR_HEADER}KEYBOARD SHORTCUTS${COLOR_NO_COLOR}"
    echo "Ctrl + Alt + E - emote"
    echo

    echo "${COLOR_HEADER}GIT${COLOR_NO_COLOR}"
    git alias | sed "s/^alias/ ${COLOR_CYAN}&${COLOR_NO_COLOR}/" # Colorize "alias" keyword
    echo

    echo "${COLOR_HEADER}BROWSER SEARCH ENGINES${COLOR_NO_COLOR}"
    echo "AlternativeTo - at"
    echo "Arch Packages - ap"
    echo "Arch Wiki     - arch"
    echo "AUR           - aur"
    echo "Bookmarks     - @bookmarks"
    echo "Copilot       - cp"
    echo "Costco        - c"
    echo "ETFDB         - etf"
    echo "Gemini        - @gemini"
    echo "GitHub        - gh"
    echo "Giphy         - gif"
    echo "Gist          - gist"
    echo "Grok          - grok"
    echo "History       - @history"
    echo "Instagram     - i"
    echo "Tabs          - @tabs"
    echo "TradingView   - tv"
    echo "Twitter       - t"
    echo "X             - x"
    echo'
#    echo "Fn + W - previous track"
#    echo "Fn + E - next track"
#    echo "Fn + R - play/pause"

source .bashrc_private

