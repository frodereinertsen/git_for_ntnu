#!/bin/bash
source scripts/include.sh

set_prompt ":-) "
title "Agenda"

cd $PRESENTATION_HOME
for fn in `ls scripts/innhold*.sh`; do
  substring_length=$((${#fn}-19))
  substring_name=${fn:16:substring_length}
  name_without_underscore=${substring_name//_/ }
  say "$name_without_underscore"
done

for fn in `ls scripts/innhold*.sh`; do
  agenda_number=${fn:16:1}
  alias $agenda_number=". ./$fn"
done

