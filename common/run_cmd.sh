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
colors=($PINK $YELLOW $GREEN $BLUE $VIOLET)

words=$1
cmd=$2
color=${colors[$3]}

printf "${color}${words}...${NO_COLOR}" | pv -qL $FAST
read -p ''
echo -e "${color}$ ${cmd}${NO_COLOR}" | pv -qL $FAST;
${cmd}
read -p ''