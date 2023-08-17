#!/bin/bash

case $1 in

    stop)
        pg_ctl stop -D postgresql/data
        ;;

    start)
        if [ ! -d "postgresql/data" ]
        then
            mkdir -p postgresql/logs
            pg_ctl -D postgresql/data initdb
        fi

        pg_ctl start -D postgresql/data -o "-k /tmp" -l postgresql/logs/postgresql.log
        ;;

    *)
        echo "Wrong command, example usage:"
        echo "./postgresql.sh [start|stop]"
        ;;
esac
