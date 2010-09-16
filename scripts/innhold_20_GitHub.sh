#!/bin/bash
source scripts/include.sh

super_title "GitHub"
set_prompt ""

wait_for_enter

ask "Hvor kommer$COL_RED GitHub inn i bildet$COL_RESET?"

image "github/cloud.png"

say_and_wait " - en tjeneste i$COL_RED skyen$COL_RESET (også kalt Internett)"

video act_like_a_man.flv

