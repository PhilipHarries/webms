#!/usr/bin/env bash

if [[ $# -ne 1 ]];then
    echo "Please specify $0 prod or $0 dev"
    exit 1
fi
for X in *service;do
    cd ${X}
    if [[ "$1" == "gunicorn" || "$1" == "prod" ]];then
        if [[ -f ./start_gunicorn.sh ]];then
            [[ ! -d ../logs ]] && mkdir ../logs
            ./start_gunicorn.sh &
        fi
    elif [[ "$1" == "dev" ]];then
        [[ ! -d ./logs ]] && mkdir logs
        touch ./logs/$X.log
        ./start.sh &
    else
        echo "Please specify $0 prod or $0 dev"
    fi
    cd ..
done
