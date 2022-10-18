# Two-line prompt
if [[ -n $STY ]]; then
    PS1='\[\033k\033\\\]'
    export PS1="\033[32m\D{%H:%M}-\033[34m\u\033[31m@\h:\033[36m\w\033[37m${PS1}\n "
else
    export PS1="\033[32m\D{%H:%M}-\033[34m\u\033[31m@\h:\033[36m\w\033[37m\n "
fi

shopt -s histappend
export SCREENDIR="$HOME/.config/screen"
export SCREENRC="$HOME/.config/screenrc"
export VISUAL=/usr/bin/vim

# handled by symbolic links
alias less='less -SR'
alias wpa_connect='sudo /usr/sbin/netplan apply'
alias wpa_vpn='wpa_connect && sleep 30 && piactl connect'
alias dk='docker kill'

alias gitlog='git log --oneline --graph'
alias gch='git checkout'
alias gc='git commit --interactive'
alias gps='git push'
alias gb='git branch'
alias gpl='git pull'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gl='gitlog'

alias code='code --disable-gpu'

export EDITOR=/usr/bin/vim

export PATH="$PATH:$HOME/bin/"

COLOR_RED="\e[0;91m"
COLOR_BLUE="\e[0;94m"
COLOR_EXPAND_bg="\e[K"
COLOR_BLUE_Bg="\e[0;104m${expand_bg}"
COLOR_RED_BG="\e[0;101m${expand_bg}"
COLOR_GREEN_bg="\e[0;102m${expand_bg}"
COLOR_GREEN="\e[0;92m"
COLOR_WHITE="\e[0;97m"
COLOR_BOLD="\e[1m"
COLOR_ULINE="\e[4m"
COLOR_RESET="\e[0m"

source ~/.config/git/git-prompt.sh
source ~/.config/git/git-prompt.sh
PROMPT_COMMAND='printf "\033k\033\134"; __git_ps1;printf " "'
