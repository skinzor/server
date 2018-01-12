#!/bin/sh

# kill existing dogbin instance
kill $(screen -ls | awk '/\.dogbin\t/ {print strtonum($1)}')

# update (hard reset on remote)
git fetch
git reset $(git rev-parse --symbolic-full-name HEAD) --hard

# start new session
screen -Sdm dogbin npm start
