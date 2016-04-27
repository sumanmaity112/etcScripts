for subDir in `ls -d */`; do
	echo $subDir
	(cd $subDir && git pull)
	#statements
done