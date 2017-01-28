export VIM_NOTES_TEMPLATE=~/Dropbox/Notes/NOTE_TEMPLATE


# Modules to load for Janus
#  _______________________________________________________________________________________________

module load gcc
module load gsl
module load fftw
module load python
module load numpy
module load cmake
module load slurm
module load boost


#  Set Paths
#  ____________________________________________________________________

PATH=$PATH:~/projects/usr/local/include/:~/projects/bin/:~/projects/bob-sac/


#  General Commands
#  ____________________________________________________________________

alias glog="git log --pretty=format:'%C(yellow)%h %Cred%an %Cblue%ad %Cgreen%d %Creset%s' --date=relative --graph"

alias rclogin="ssh -l gast7589 login.rc.colorado.edu"
alias rumor="ssh garrek@rumor.colorado.edu"
alias cdana="cd projects/bob-analysis/"
alias anaone="python P_tensor_analysis.py eps lr ~/projects/scratch/eps_slice_one_stage/ ~/projects/data_dump/new_analysis_one/"
alias anatwo="python P_tensor_analysis.py eps lr ~/projects/scratch/eps_slice_two_stage/ ~/projects/data_dump/new_analysis_two/"
alias cdnew="cd ~/projects/scratch/newagebob/test/simulations"


#  Janus Commands
#  ____________________________________________________________________

alias squ="squeue -u $USER -S 'i'"
alias scancel="scancel --account=S00000526"
alias sbal="sbank balance statement -U $USER"
