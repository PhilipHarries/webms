#!/usr/bin/env bash
for X in `ps -ef|grep python|egrep "manage|gunicorn"|awk '{print $2}'`;do kill ${X};done
