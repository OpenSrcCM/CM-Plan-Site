
###############################################################################
# NOTE: OSX's default path is generated from /etc/paths
# Following 2 lines recommended/tested for OSX and Win10 workstations
source /etc/profile
export PATH=$PATH:$HOME/bin

# umask 0022

###############################################################################
# App Definitions
alias python27='c:Python27/'
alias python37='c:Users/awalla5075k/AppData/Local/Programs/Python/Python37/'
# for python scripts to run 2.7:
# #! c:\python27\python.exe
# for python scripts to run 3.7:
# #! c:\python37\python.exe
#alias python='winpty c:Python27/python.exe'
alias python='winpty c:Users/awalla5075k/AppData/Local/Programs/Python/Python37/python.exe'
export VAGRANT_PREFER_SYSTEM_BIN=1

#####################################
# Repo workarea directories
#####################################
alias cwa='cd ~/git-repos'
# My workarea
alias mwa='cd ~/negit-repos'
# My workarea
alias foa='cd ~/fo-repos'

#####################################
# Website working aliases
# (Assume local to repo WA directory)
#####################################
## Comcast Deploy Directory
alias cdd='cd CM-System-Site/deploy'
## Comcast bin Directory
alias cab='cd CM-System-Site/app/bin'
## Comcast site Directory
alias cas='cd CM-System-Site/app/site'
## My Deploy Directory
alias mdd='cd CM-Plan-Site/deploy'
## My bin Directory
alias mab='cd CM-Plan-Site/app/bin'
## My site Directory
alias mas='cd CM-Plan-Site/app/site'

#####################################
# Forking Workflow aliases
# (Assume local to git controlled WA)
#####################################
### Following assumes fo-startup.bsh established workarea
## git checkout main master; git pull main master
alias gcpm="git checkout master; git pull main master"
## git checkout main develop; git pull main develop
alias gcpd="git checkout develop; git pull main develop"
## git checkout main dev-release; git pull main dev-release   (EMM-Prepaid only)
alias gcpdr="git checkout dev-release; git pull main dev-release"

###############################################################################
