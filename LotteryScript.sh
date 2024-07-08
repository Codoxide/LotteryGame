#!/bin/bash

NC='\033[0m' # No Color
LOT="\033[1;33m" #The lucky 3 goldens 7s as a variable
NOR='\e[0m' #Normal Text Color
PURPLE='\033[0;35m' #Purple Text Color
tries=0 #
echo -e $"Goal of game is to strike a lucky 3 golden 7s which looks like this ${LOT}777${NC}. ${Nor}Lets Begin!${NC}"
sleep 0
echo "Loading."
sleep 0
echo "Loading.."
sleep 0
echo "Loading..."
sleep 1
while true
do
    randomColor1=$(($RANDOM % 2)) 
    randomColor2=$(($RANDOM % 8)) 

    newColor1="\033[${randomColor1};3${randomColor2}m"

    randomColor1=$(($RANDOM % 2)) 
    randomColor2=$(($RANDOM % 8)) 

    newColor2="\033[${randomColor1};3${randomColor2}m"

    randomColor1=$(($RANDOM % 2)) 
    randomColor2=$(($RANDOM % 8)) 

    newColor3="\033[${randomColor1};3${randomColor2}m"
    t=$(($RANDOM % 10))
    t1=$(($RANDOM % 10))
    t2=$(($RANDOM % 10))

    x="${newColor1}${t}${NC}${newColor2}${t1}${NC}${newColor3}${t2}${NC}"
    echo -e "$x"
    tries=$(( tries+1 ))
    if [[ "$x" != "${LOT}7${NC}${LOT}7${NC}${LOT}7${NC}" ]]; then
        continue
    else

        if [[ $tries > 1 ]]; then
            echo -e $"it took ${PURPLE}$tries${NC} tries to get the rare ${LOT}777${NC}."
            break
        else
            echo -e $"it took ${PURPLE}$tries${NC} try to get the rare ${LOT}777
            ${NC}."
            break
        fi
    fi
done
