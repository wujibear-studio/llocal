# <string> - changes a <string> to be capitalized
function llupcase() {
  echo "${1:=no_value}" | tr '[:lower:]' '[:upper:]'
}