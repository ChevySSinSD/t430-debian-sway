#      ____             __       ___    ___                     
#     / __ )____ ______/ /_     /   |  / (_)___ _________  _____
#    / __  / __ `/ ___/ __ \   / /| | / / / __ `/ ___/ _ \/ ___/
#   / /_/ / /_/ (__  ) / / /  / ___ |/ / / /_/ (__  )  __(__  ) 
#  /_____/\__,_/____/_/ /_/  /_/  |_/_/_/\__,_/____/\___/____/  
#                                                               
# Purpose       Bash alias definitions
# Github        https://github.com/ChevySSinSD/t430-debian-sway/
# Reference	https://vikaskyadav.github.io/awesome-bash-alias/

#    _     ___ 
#   | |   / __|
#   | |__ \__ \
#   |____||___/

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'

#      _    ___  _____ 
#     /_\  | _ \|_   _|
#    / _ \ |  _/  | |  
#   /_/ \_\|_|    |_|  

alias aptuua='sudo apt update -q && sudo apt upgrade -q && sudo apt autoremove'

#     ___  ___  
#    / __||   \ 
#   | (__ | |) |
#    \___||___/ 
               
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'=

#     ___  ___  _____ 
#    / __||_ _||_   _|
#   | (_ | | |   | |  
#    \___||___|  |_|  

alias g='git'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gr='git rebase'
alias gs='git status'
alias gc='git checkout'
alias gl="git log --pretty=format:'%Cblue%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset' --abbrev-commit --date=relative"
alias gbranches='git branch -a'
alias gnb='git checkout -b'
alias gnewbranch='git checkout -b'
alias grmbranch='git branch -d'
alias gd='git diff'
alias gss='git stash save'
alias gsp='git stash pop'
alias gsl='git stash list'
alias ga='git add'
alias gaa='git add -A'
alias gcom='git commit'
alias gcomam='git commit -am'
alias gcomma='git add -A && git commit'
alias gcommend='git add -A && git commit --amend --no-edit'
alias gm='git merge'
alias gcp='git cherry-pick'
alias gpoh='git push origin HEAD'
alias gcd='cd ~/Git/'
                    
#    ___    ___  _____  ___  ___  _     ___  ___ 
#   |   \  / _ \|_   _|| __||_ _|| |   | __|/ __|
#   | |) || (_) | | |  | _|  | | | |__ | _| \__ \
#   |___/  \___/  |_|  |_|  |___||____||___||___/

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias configfu='config fetch upstream'
alias configfo='config fetch origin'
alias configr='config rebase'
alias configs='config status'
alias configc='config checkout'
alias configl="config log --pretty=format:'%Cblue%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset' --abbrev-commit --date=relative"
alias configbranches='config branch -a'
alias confignb='config checkout -b'
alias confignewbranch='config checkout -b'
alias configrmbranch='config branch -d'
alias configd='config diff'
alias configss='config stash save'
alias configsp='config stash pop'
alias configsl='config stash list'
alias configa='config add'
alias configaa='config add -A'
alias configcom='config commit'
alias configcomam='config commit -am'
alias configcomma='config add -A && config commit'
alias configcommend='config add -A && config commit --amend --no-edit'
alias configm='config merge'
alias configcp='config cherry-pick'
alias configpoh='config push origin HEAD'
alias configcd='cd ~'
