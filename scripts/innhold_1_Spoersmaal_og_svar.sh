#!/bin/bash
source scripts/include.sh

set_prompt ""

log_file=spoersmaal_med_svar.txt

"" 1>$log_file

ask() {
  newline 5
  say "   $1"
  say "$1" 1>>$log_file
}

read_answer() {
  newline 2
  read ANSWER
  say "$ANSWER" 1>>$log_file
  clear
}

ask "Hvorfor bruker en versjonskontroll?"
image "sharing_files.png"
wait_for_enter
echo "asdf"
read_answer
ask "Hva vil det si at den er distribuert?"
read_answer

git add spoersmaal_med_svar.txt
git commit -m "Verdifulle svar må tas vare på!"
git push

