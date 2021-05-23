#!/bin/zsh

function llrm() {
  folder=""
  type=""
  while getopts ":h:e:f:a:p:" opt; do
    case ${opt} in
      h )
        echo "Usage:"
        echo "    llrm -a <name>       Remove the <name> alias"
        echo "    llrm -e <name>       Remove the <name> export"
        echo "    llrm -f <name>       Remove the <name> function"
        echo "    llrm -p <name>       Remove the <name> partial"
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
    esac
  done

  llremove $folder $1 $type
}