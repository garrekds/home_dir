export VIM_NOTES_TEMPLATE=~/Dropbox/Notes/NOTE_TEMPLATE


# Modules to load for Summit 
#  _______________________________________________________________________________________________

module load gcc
module load python
module load numpy

#  Set Paths
#  ____________________________________________________________________

PATH=$PATH:~/projects/usr/local/include/:~/projects/bin/:~/projects/bob-sac/

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
alias cdtest="cd ~/projects/scratch/newagebob/runs/17-01-24_slice_eps0.125-16._lr0.32-81.92/simulations/eps16.0/eps16.000000_lr0.320000/s0"

#  Summit Commands
#  ____________________________________________________________________

alias squ="squeue -u $USER -S 'i'"
#alias scancel="scancel --account=S00000526"
alias sbal="sbank balance statement -U $USER"

# Setting PATH for Python (and other python paths)
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/usr/local/Cellar/python3/3.6.0_1/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PYTHONPATH=$PYTHONPATH:$HOME/projects/bob-analysis/Lib


#  Scripts
#  ____________________________________________________________________

vnote()
{
if [[ $PWD/ = */Notes/TEX/* ]]; then
	cd ~;
fi
if [ -n "$1" ]; then
	VIM _NOTES_TEMPLATE="~/Documents/Notes/template.vnote" vim note:`date +"%Y%m%d%H%M"`-"$*";
else
	VIM_NOTES_TEMPLATE="~/Documents/Notes/template.vnote" vim note:`date +"%Y%m%d%H%M"`;
fi
}

tnote()
{
if [ -n "$1" ]; then
	NAME="$1!;
	DIR=~/Documents/Notes/TEX/$NAME;
	mkdir -p $DIR;
	cd $DIR;
	if [ -f ~/Documents/Notes/TEX/.template.tex ]; then
		cp ~/Documents/Notes/TEX/.template.tex $DIR/$NAME.tex;
		pdflatex $DIR/$NAME.tex > /dev/null;
		(open -ga skim $DIR/$NAME.pdf &);
		vim $DIR/$NAME.tex;
	else
		vim $DIR/$NAME.tex;
	fi
else
	vim +"RecentNotes tex";
fi
}
