[[ -f ../admin_run.pid ]] && kill -9 `cat ../admin_run.pid`
for X in `sudo netstat -npa|grep 5481|grep LISTEN|awk '{print $NF}'|sed s%/python%%`;do
    for Y in `ps -ef|grep python|grep admin|awk '{print $2}'`;do
        echo $Y
        kill -9 $Y
    done
    echo $X
    kill -9 $X
done
