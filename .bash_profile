# Modules to load for Summit 
#  _______________________________________________________________________________________________

module load gcc
module load python
module load gsl
module load fftw


#  Set Paths
#  ____________________________________________________________________

PATH=$PATH:~/projects/usr/local/include:~/projects/bin
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/python@2/bin:$PATH"
export PATH=$PATH:/usr/local/Cellar/geckodriver

#  General Commands
#  ____________________________________________________________________

alias glog="git log --pretty=format:'%C(yellow)%h %Cred%an %Cblue%ad %Cgreen%d %Creset%s' --date=relative --graph"
alias rclogin="ssh -l gast7589 login.rc.colorado.edu"
alias rumor="ssh garrek@rumor.colorado.edu"
alias cdana="cd ~/projects/newagebob/analysis/Lib"
alias cdat="cd ~/projects/data/"
alias cdnew="cd ~/projects/newagebob/"
alias cdruns="cd ~/projects/scratch/newagebob/runs"
alias cdexruns="cd /Volumes/Samsung_T3/projects/scratch/newagebob/runs/"
alias cdtest="cd ~/projects/scratch/newagebob/test"


#  Summit Commands
#  ____________________________________________________________________

#alias squ="squeue -u $USER -S 'i'"
#alias scancel="scancel --account=S00000526"
#alias sbal="sbank balance statement -U $USER"




