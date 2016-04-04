if [[ -f ../flickr_run.pid ]];then
    kill -9 `cat ../flickr_run.pid`  2>/dev/null
fi
sleep 3
for i in 1 2 3;do
    for PID in `sudo netstat -npa|grep 5433|grep LISTEN|awk '{print $NF}'|sed s%/python%% 2>/dev/null`;do
        kill -9 ${PID} 2>/dev/null
    done
    sleep 1
done
