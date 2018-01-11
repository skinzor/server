#!/bin/sh

# kill existing dogbin instance
kill $(screen -ls | awk '/\.dogbin\t/ {print strtonum($1)}')

# update
git pull

# start new session
screen -Sdm dogbin npm start
