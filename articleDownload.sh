if [ "$#" -ne "0" ]; then
	curl -O $1
	if [ "$#" -gt "1" ]; then
		mv `find . -ctime -2s` "$2".pdf
		rename 's/ /_/g' "$2".pdf
	fi
fi
