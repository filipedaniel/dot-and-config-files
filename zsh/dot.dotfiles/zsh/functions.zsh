#------------------------------------------------#
# 					FUNCTIONS        			 #
#------------------------------------------------#

# backup git changes!
function git-backup() {
 	git add --all
 	git commit -am 'Done for today!'
 	git push $@
}

# Get a gitignore for a projet technology (parameter)!
function git-ignore() {
  curl -L -s https://www.gitignore.io/api/$@
}

# Create a new folder and CD in it!
function mkcd() {
 	mkdir -p $@
 	cd $@
}

# With no arguments opens the current directory, otherwise opens the given location
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open $@;
	fi;
}
