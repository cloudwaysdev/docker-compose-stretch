docker run --net=ansible_nw --ip="172.5.0.22" --name=webserver -v $SSH_AUTH_SOCK:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent cloudwaysdev/ansiblestretch /bin/bash


--net=my_network  --ip="172.5.0.22"