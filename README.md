`ln -s ~/.ssh/id_rsa.pub ssh_data/authorized_keys`

`mkdir ssh_data && cp -f ~/.ssh/id_rsa.pub ssh_data/authorized_keys`
`sudo chmod a+x -R ssh_data/`
`sudo chmod 777 -R ssh_data/`

`rm ssh_data/authorized_keys`


### logs
sudo journalctl -fu docker.service


## clear previous session
ssh-keygen -f "/home/khawar/.ssh/known_hosts" -R "172.5.0.22"
ssh-keygen -f "/home/khawar/.ssh/known_hosts" -R "172.5.0.23"
ssh-keygen -f "/home/khawar/.ssh/known_hosts" -R "172.5.0.24"

`docker-compose up -d`

ssh root@172.5.0.22