# WIP - edit a file with your favourite editor

function lledit() {
  folder=""
  type=""
  while getopts ":h:e:f:a:p:" opt; do
    case $opt in
      h )
        echo "Usage:"
        echo "    llrm -a <name>       Edit the <name> alias"
        echo "    llrm -e <name>       Edit the <name> export"
        echo "    llrm -f <name>       Edit the <name> function"
        echo "    llrm -p <name>       Edit the <name> partial"
        return 0
        ;;
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
    :)
      echo "Option -$OPTARG requires an argument." >&2
      return 1
      ;;
    esac
  done

  file=$LLOCAL_USER/$folder/$1.zsh
  echo "Opening that $1 $type for ya..."
  $EDITOR $file
  return 0
}