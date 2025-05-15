# System management
alias root="sudo su -"
alias apt="sudo apt install"
alias update='sudo apt-get update && sudo apt-get upgrade'
alias sr="systemctl service $1 restart"
alias vls="systemctl list-units --type=service --all | grep "
alias neo="neofetch"
alias tux="fortune | cowsay -f tux"
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
