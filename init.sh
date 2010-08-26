#!/bin/bash
PS1=""
clear
echo "Distribuert versjonskontroll med"
echo ""

super_title() {
  cd ../lib/figlet222
  ./figlet -c $1
  cd ../../git_for_ntnu
}

super_title "Git og GitHub"

for fn in `ls agenda*.sh`; do
  agenda_number=${fn:7:1}
  alias $agenda_number=". ./$fn"
done

