#!/usr/local/bin/zsh

# usage: doublleBSlash.sh $lineStart $lineEnd $file

[ $# != 3 ] && echo "not enough arguments" && exit 1
sed -i -n "$1,$2 {
			/\\\\$/!s/$/\\\\\\\\/g
			s/^\\\\\\\\//g
			s/\([^[:graph:]]\)\"/\ \`\`/g
			s/^\"/\`\`/g
			/\\\\#/!s/\#/\\\\#/g
		}" $3 
			#s/^\\\\\\\\//g
			#/.*/!s/\"/\`\`/g
			#s/[:blank:]*\"/\`\`/g
