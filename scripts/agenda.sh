#!/bin/bash
source scripts/include.sh

super_title "Agenda"
set_prompt ":-) "

cd $PRESENTATION_HOME
for fn in `ls scripts/innhold*.sh`; do
  substring_length=$((${#fn}-19))
  substring_name=${fn:16:substring_length}
  name_without_underscore=${substring_name//_/ }
  red "$name_without_underscore"  
done

newline

for fn in `ls scripts/innhold*.sh`; do
  agenda_number=${fn:16:1}
  alias $agenda_number=". ./$fn"
done

