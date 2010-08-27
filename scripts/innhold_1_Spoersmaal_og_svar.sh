#!/bin/bash
source scripts/include.sh

set_prompt ""

log=spoersmaal_med_svar.txt

"" 1>$log

ask(){
  newline 5
  say "   $1"
  say "$1" 1>>$log
  newline 2
  read ANSWER
  say "$ANSWER" 1>>$log
  clear
}

ask "Hvorfor bruker en versjonskontroll?"
ask "Hva vil det si at den er distribuert?"

git add spoersmaal_med_svar.txt
git commit -m "Verdifulle svar må tas vare på!"
git push


