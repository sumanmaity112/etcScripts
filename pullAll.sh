for subDir in `ls -d */`; do
	tput bold; tput setaf 2; echo "\033[4m$subDir\033[0m"
	(cd $subDir && git pull)
done
