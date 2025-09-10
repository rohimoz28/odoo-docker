#!/bin/bash

# ubah FILE dengan path docker-compose.yaml yang sesuai
FILE="conf/docker-compose.yaml"

case "$1" in
  up)
    docker compose -f $FILE up -d
    ;;
  down)
    docker compose -f $FILE down
    ;;
  restart)
    docker compose -f $FILE restart
    ;;
  logs)
    docker compose -f $FILE logs -f --tail 200
    ;;
  *)
    echo "Usage: $0 {up|down|restart|logs}"
    exit 1
esac
