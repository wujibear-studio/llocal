# <-flag[e|f|a|p]> <name> - Removes the <name> from the matching option e.g., llrm -e <name>
function llrm() {
  unset folder
  unset type
  while getopts ":e:f:a:p" FLAG; do
    case ${FLAG} in
      e)
        folder="exports"
        type="export"
        ;;
      f)
        folder="functions"
        type="function"
        ;;
      a)
        folder="aliases"
        type="alias"
        ;;
      p)
        folder="partials"
        type="partial"
        ;;
    esac
  done
  llremove $folder $2 $type
}