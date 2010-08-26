#!/bin/bash
PS1=""

clear

write(){
for i in `seq 1 5`; do
  echo ""
done
echo "  $1"
read WAIT
clear
}

write "du kan være både tjener og klient"
write "heisan"


