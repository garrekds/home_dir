# Modules to load for Summit 
#  _______________________________________________________________________________________________

module load gcc
module load python
module load gsl
module load fftw


#  Set Paths
#  ____________________________________________________________________

PATH=$PATH:~/projects/usr/local/include:~/projects/bin:~/projects/bob-sac
PYTHONPATH=$PYTHONPATH:/usr/local/Cellar/python/2.7.13/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/Cellar/python3/3.6.2/Frameworks/Python.framework/Versions/3.6/bin


#  General Commands
#  ____________________________________________________________________

alias note="vim +RecentNotes"
alias glog="git log --pretty=format:'%C(yellow)%h %Cred%an %Cblue%ad %Cgreen%d %Creset%s' --date=relative --graph"
alias rclogin="ssh -l gast7589 login.rc.colorado.edu"
alias rumor="ssh garrek@rumor.colorado.edu"
alias cdana="cd ~/projects/newagebob/analysis/Bulk"
alias cdc="cd ~/Documents/courses"
alias cdat="cd ~/projects/data/"
alias cdnew="cd ~/projects/newagebob/"
alias cdruns="cd ~/projects/scratch/newagebob/runs"
alias cdtest="cd ~/projects/scratch/newagebob/test"


#  Summit Commands
#  ____________________________________________________________________

#alias squ="squeue -u $USER -S 'i'"
#alias scancel="scancel --account=S00000526"
#alias sbal="sbank balance statement -U $USER"


#  Scripts
#  ____________________________________________________________________

