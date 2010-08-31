#!/bin/bash
source scripts/include.sh

set_prompt ""

ask() {
  newline 5
  say "   $1"
  wait_for_enter
}

ask "Hva er versjonskontroll?"
image "sharing_files.png"

ask "Hva vil det si at den er distribuert?"

