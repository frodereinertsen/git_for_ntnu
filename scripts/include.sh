export PRESENTATION_HOME=`pwd`
cd $PRESENTATION_HOME
clear

say() {
  echo $1
}

wait_for_enter() {
  read WAIT
}

newline() {
  if [ -z "$1" ]; then
    n=1
  else
    n=$1  
  fi

  for i in `seq 1 $n`; do
    say ""
  done
}

title() {
  say " --- $1 --- "
  newline
}

image() {
  feh -FZ images/$1
  wait_for_enter
}

super_title() {
  cd $PRESENTATION_HOME/../lib/figlet222
  ./figlet -c $1
  cd $PRESENTATION_HOME
  newline 2
}

set_prompt() {
  PS1=$1
}

