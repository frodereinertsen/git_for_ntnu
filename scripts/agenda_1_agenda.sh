#!/bin/bash
PS1=":-) "
clear
echo " --- Agenda --- "
echo ""
for fn in `ls agenda*.sh`; do
  substring_length=$((${#fn}-10))
  substring_name=${fn:7:substring_length}
  name_without_underscore=${substring_name//_/ }
  echo "$name_without_underscore"
done
echo ""
echo ""

