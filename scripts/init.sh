#!/bin/bash
source scripts/include.sh

set_prompt ""
newline 3
clear
title "Distribuert versjonskontroll med"
super_title "Git og GitHub"
newline `expr $ROWS - 18`
line
say_right "\"Someday, and that day may never come, I'll call upon you to do a service for me.\""
newline
say_right "Don Corleone"
line

alias init=". scripts/init.sh"
alias agenda=". scripts/agenda.sh"
alias gudfaren="video service.mp4"
alias shelltris="shelltris"
