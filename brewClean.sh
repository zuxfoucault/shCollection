#!/usr/local/bin/zsh

for name in git macvim sqlite vim
do
	brew cleanup $name
done
