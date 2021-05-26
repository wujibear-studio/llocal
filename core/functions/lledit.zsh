# <-flag[e|f|a|p]> <name> - Edits the <name> file from the matching option e.g., llrm -e <name>
function lledit() {
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

  file=$LLOCAL_USER/$folder/$2.zsh
  llcolor $GREEN "Opening that $2 $type for ya..."
  $EDITOR $file
}