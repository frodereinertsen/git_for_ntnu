#!/bin/bash
PS1=":- "
clear
echo " --- Agenda --- "
echo ""
for fn in *; do
  substring_length=$((${#fn}-5))
  substring_name=${fn:2:substring_length}
  name_without_underscore=${substring_name//_/ }
  echo "$name_without_underscore"
  agenda_number=${fn:0:1}
  alias $agenda_number=". ./$fn"
done

