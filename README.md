#!/bin/bash

NC='\033[0m' # No Color
LOT="\e[33m7\e[33m7\e[33m7"
NOR='\e[0m'
PURPLE='\033[0;35m'
count=0
echo -e $"Goal of game is to strike a lucky 3 golden 7s which looks like this ${LOT}. ${Nor}Lets Begin!${NC}"
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
    count=$(( count+1 ))
    if [[ "$x" != "$LOT" ]]; then
        continue
    else

        if [[ $count > 1 ]]; then
            echo -e "${NOR}it took ${PURPLE}$count${NC} tries to get the lottery${NC}"
            break
        else
            echo -e "${NOR}it took ${PURPLE}$count${NC} try to get the lottery${NC}"
            break
        fi
    fi
done
