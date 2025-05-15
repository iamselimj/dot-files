# ALIASES

# utilisation de NoCorrect
alias cp='nocorrect cp'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias su='nocorrect su'


alias mc="mkdir -p $1 && cd $1"
alias md="mkdir -p"
alias rd="rmdir"

# Personal Encryption Folder
alias gcu="gocryptfs ~/.crypto ~/.safe"
alias gcl="fusermount -u ~/.safe"

# System management
alias root="sudo su -"
alias apt="sudo apt install"
alias aptu='sudo apt-get update && sudo apt-get upgrade'
alias srvr="systemctl service $1 restart"
alias lsrv="systemctl list-units --type=service --all | grep "
alias neo="neofetch"
alias tux="fortune | cowsay -f tux"
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Environment management
alias rc="source ~/.zshrc"
alias ma="vim ~/.zsh/aliases.zsh && rc"
alias rcv="vim ~/.zshrc ; source ~/.zshrc"
alias path='echo -e ${PATH//:/\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# File and Directory Handling
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias lt="ls --human-readable --size -1 -S --classify"
alias rm="rm -v"
alias filetree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias count='find . -type f | wc -l'
alias vi="vim"
alias c="clear"
alias j="jobs -l"

# Git aliases
alias gb="git symbolic-ref --short -q HEAD"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpo="git push origin $(gb)"
alias gpof="git push origin $(gb) --force"
alias gcp="ga . ; gc $2 ; gp"
alias gf="git fetch"
alias gm="git merge"
alias gc="git checkout -b $1"
alias go="git branch origin $1"
alias cg='cd $(git rev-parse --show-toplevel)'

# Networking
alias curl="curl"
alias wget="wget -c"
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias ipt='sudo /sbin/iptables'
alias iptlistfw="sudo /sbin/iptables -L FORWARD -n -v --line-numbers"
alias ufws="sudo ufw status"

# Miscellaneous
alias h="history"
alias hg="history | grep"
alias ps2="ps -ef | grep -v $$ | grep -i"
alias psg="ps -Helf | grep -v $$ | grep -i -e WCHAN -e"
alias dux="du -ck | sort -nr | head"
alias cpv="rsync -ah --info=progress2"
alias del='mv --force -t ~/.local/share/Trash'