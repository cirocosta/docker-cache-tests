#!/bin/bash

set -em
readonly STATUS_FILE=/root/status

main () {
  while test $# -gt 0; do
    echo "Executing $1"

    case $1 in
        supervise)      
          echo "DOWN" > /root/status
          socat TCP-LISTEN:1337,reuseaddr,fork,bind=0.0.0.0 $STATUS_FILE &
          ;;

        sleep)          
          sleep 20
          ;;

        start-server)   
          echo "<h1>hello</h1>" > index.html
          python -m SimpleHTTPServer 80 &
          echo "UP" > $STATUS_FILE
          fg
          ;;

        *)              
          echo "Unknown command '$1'"
          ;;
    esac
    shift
  done 
}

main "$@"
