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
alias go="git branch origin $1"  # TODO: clarifier intention
alias cg='cd $(git rev-parse --show-toplevel)'
