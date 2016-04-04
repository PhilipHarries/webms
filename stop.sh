#!/bin/ksh
for X in `ps -ef|grep python|grep manage|awk '{print $2}'`;do kill ${X};done
