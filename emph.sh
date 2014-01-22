#!/usr/local/bin/zsh

sed -i -n "63,95 {
/^$/!s/\(.*\)/\\\\emph\{\1\}/g
}" note.tex
