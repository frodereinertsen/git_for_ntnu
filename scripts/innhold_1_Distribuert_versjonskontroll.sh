#!/bin/bash
source scripts/include.sh

super_title "Distribuert versjonskontroll"
set_prompt ""

wait_for_enter

ask "Hva kan en oppnå med$COL_RED versjonskontroll$COL_RESET?"

image "vcs/sharing_files.png"

say_and_wait " - muliggjør$COL_RED samarbeid$COL_RESET"

image "vcs/versioning.png"

say_and_wait " - filene blir$COL_RED versjonert$COL_RESET ettersom de endres" 

image "vcs/backup.png"

say_and_wait " - kan brukes som$COL_RED backup$COL_RESET"

ask "Hva vil det si at den er$COL_RED distribuert$COL_RESET?"

image "distributed/give-and-take.jpg"

say_and_wait " - alle kan fungere som både$COL_RED tjener og klient$COL_RESET"

image "distributed/sentral_organisering.png"

say_and_wait " - det muliggjør en$COL_RED fleksibel organisering$COL_RESET av prosjekter"

image "distributed/fleksibel_organisering.png"

say_and_wait " - den gjør det enklere/er laget for å håndtere$COL_RED samtidige versjoner$COL_RESET i prosjekter"


video spend_time_with_your_family.flv

