#!/bin/bash

NC='\033[0m' # No Color
LOT="\e[33m7\e[33m7\e[33m7" #The lucky 3 goldens 7s as a variable
NOR='\e[0m' #Normal Text Color
PURPLE='\033[0;35m' #Purple Text Color
tries=0 #
echo -e $"Goal of game is to strike a lucky 3 golden 7s which looks like this ${LOT}${NC}. ${Nor}Lets Begin!${NC}"
sleep 3
echo "Loading."
sleep 1
echo "Loading.."
sleep 1
echo "Loading..."
sleep 1
while true
do
    
    x="\e[3$(( $RANDOM%4 ))m$(( $RANDOM%10 ))\e[3$(( $RANDOM%4 ))m$(( $RANDOM%10 ))\e[3$(( $RANDOM%4 ))m$(( $RANDOM%10 ))"
    echo -e "$x"
    tries=$(( tries+1 ))
    if [[ "$x" != "$LOT" ]]; then
        continue
    else

        if [[ $tries > 1 ]]; then
            echo -e $"${NOR}it took ${PURPLE}$tries${NC} tries to get the rare ${LOT}${NC}.${NC}"
            break
        else
            echo -e $"${NOR}it took ${PURPLE}$tries${NC} try to get the rare ${LOT}${NC}.${NC}"
            break
        fi
    fi
done
