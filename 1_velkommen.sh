#!/bin/bash
PS1=": "
clear
echo "Velkommen til en introduksjon til distribuert versjonskontroll med Git og GitHub!"

for fn in `ls *.sh`; do
  agenda_number=${fn:0:1}
  alias $agenda_number=". ./$fn"
done
