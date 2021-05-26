# <name> - WIP Removes the user created file by the same <name>
function llrm() {
  folder=""
  type=""
  while getopts ":e:f:a:p:" opt; do
    case ${opt} in
      e )
        folder="exports"
        type="export"
        ;;
      f )
        folder="functions"
        type="function"
        ;;
      a )
        folder="aliases"
        type="alias"
        ;;
      p )
        folder="partials"
        type="partial"
        ;;
    \? )
      echo "Invalid Option: -$OPTARG" 1>&2
      return 1
      ;;
    esac
  done

  llremove $folder $1 $type
}