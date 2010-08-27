#!/bin/bash
source scripts/include.sh

set_prompt ""

log=spoersmaal_med_svar.txt

"" 1>$log

ask(){
  for i in `seq 1 5`; do
    echo ""
  done
  echo "   $1"
  echo "$1" 1>>$log
  read ANSWER
  echo "$ANSWER" 1>>$log
  clear
}

ask "Hvorfor bruker en versjonskontroll?"
ask "Hva vil det si at den er distribuert?"

git add spoersmaal_med_svar.txt
git commit -m "Åpne spørsmål har fått lukkede svar"
git push


