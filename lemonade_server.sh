#!/usr/local/bin/zsh
ps cax | grep lemonade> /dev/null
if [ $? -eq 0 ]; then
  echo "lemonade is running."
else
  echo "lemonade is not running."
  nohup lemonade server &
fi
ssh -R 7878:127.0.0.1:7878 bc@10.20.12.117
