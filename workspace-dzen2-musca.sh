#!/bin/sh
FN='-xos4-terminus-*-*-*-*-10-*-*-*-*-*-*-*'
BG='#262626'
FG='#dadada'
W=200
X=0
Y=768
GH=7
GW=50
#GFG='#a8a3f7'
GBG='#111'

MAXPOS="100"

while true; do
    ws=`musca -c "show groups" | awk -v ORS=" " '{ print ($2=="*"?"^fg(#000000)^bg(#ffffff)":"^fg(#dadada)^bg(#262626)")$3} END { print "\n" }' `
  echo "$ws"
#  sleep 1;
done | dzen2 -ta l -tw $W -x $X -y $Y -fg $FG -bg $BG -fn $FN -e

