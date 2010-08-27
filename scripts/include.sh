export PRESENTATION_HOME=`pwd`
cd $PRESENTATION_HOME
clear

newline() {
  if [ -z "$1" ] then
    n=1
  else
    n=$1  
  fi

  for i in `seq 1 $1`; do
    echo ""
  done
}

title() {
  echo " --- $1 --- "
  newline
}

super_title() {
  cd $PRESENTATION_HOME/../lib/figlet222
  ./figlet -c $1
  cd $PRESENTATION_HOME
}

set_prompt() {
  PS1=$1
}

