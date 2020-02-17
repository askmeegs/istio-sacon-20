#!/usr/local/bin/bash


# Set speed
FAST=40
NORMAL=20

# Set formatting
bold=$(tput bold)


PINK='\033[1;31m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
VIOLET='\033[1;35m'
NO_COLOR='\033[0m'
i=0
colors=($PINK $YELLOW $GREEN $BLUE $VIOLET)


# what to print before running something
log () {
    if [ "$i" == "${#colors[@]}-1" ]
    then
        let "i=0"
    else
        let "i+=1"
    fi
    color=${colors[i]}
    printf "${color}${1}...${NO_COLOR}" | pv -qL $NORMAL
    read -p ''
}

# run a command!
run() {
    echo -e "${color}$ ${1}${NO_COLOR}" | pv -qL $FAST;
    ${1};
    read -p ''
}

run_all() {
    eval "declare -A commands="${1#*=}
    for c in "${!commands[@]}"
    do
        log "$c"
        run "${commands[$c]}"
    done
}
