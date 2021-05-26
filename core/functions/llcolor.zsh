# <color_name> <text> <style?> - a helper to print <text> in <color_name>

# Colors
export BLACK="30m"
export RED="31m"
export GREEN="32m"
export YELLOW="33m"
export BLUE="34m"
export MAGENTA="35m"
export CYAN="36m"
export LIGHT_GRAY="37m"
export GRAY="90m"
export LIGHT_RED="91m"
export LIGHT_GREEN="92m"
export LIGHT_YELLOW="93m"
export LIGHT_BLUE="94m"
export LIGHT_MAGENTA="95m"
export LIGHT_CYAN="96m"
export WHITE="97m"
export ENDCOLOR="0m"

# Styles
export BOLD=1
export FAINT=2
export ITALIC=3
export UNDERLINE=4

function llcolor() {
  style="${3:=0};"
  echo -e "\e[$style$1$2\e[$ENDCOLOR"
}