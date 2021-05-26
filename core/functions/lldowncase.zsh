# <string> - changes a <string> to be lowercase

function lldowncase() {
  echo ${1:=no_value} | tr '[:upper:]' '[:lower:]'
}