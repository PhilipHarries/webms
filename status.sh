for X in *service;do
    echo ${X} `ps -ef|grep python|grep ${X}|wc -l`
done
