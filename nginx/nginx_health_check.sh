#!/bin/bash

main() {
   if !(systemctl -q is-active "nginx.service"); then
     >&2 echo "nginx is unhealthy"
     exit 1
   fi
   echo "nginx is healthy."
   exit 0
}

main "$@"
