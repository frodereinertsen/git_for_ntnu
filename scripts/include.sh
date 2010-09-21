export PRESENTATION_HOME=`pwd`
export DEMO_HOME='/home/frodere/Projects/NTNU'
cd $PRESENTATION_HOME
clear

shelltris() {
  cd $PRESENTATION_HOME/shelltris
  ./shelltris.sh
  cd $PRESENTATION_HOME
}

say_and_wait() {
  say "$1"
  wait_for_enter
}

ask() {
  clear
  newline 2
  say "$1"
  wait_for_enter
}

say() {
  echo -e $1
}

say_right() {
  printf "%*s\n" $(tput cols) "$1"
}

red() {
  echo -e "$COL_RED$1$COL_RESET"
}

yellow() {
  echo -e "$COL_YELLOW$1$COL_RESET"
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

line() {
  printf "%$(tput cols)s\n"|tr ' ' '='
}

image() {
  feh -FZ images/$1
  wait_for_enter
}

super_title() {
  figlet -c $1
  newline 2
}

set_prompt() {
  PS1=$1
}

video() {
  cd $PRESENTATION_HOME
  mplayer -fs video/$1
  clear
}

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_CYAN=$ESC_SEQ"36;01m"

x=`stty -a | grep rows`
x=`echo ${x#* rows}`
x=`echo ${x:0:2}`

ROWS=$x


