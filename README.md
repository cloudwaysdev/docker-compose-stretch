`docker-compose up -d`

OR

`docker-compose up`

``
```
docker network create --gateway 172.5.0.1 --subnet 172.5.0.0/16 --driver bridge ansible_nw

docker network inspect ansible_nw

docker network ls
```
``

`ln -s ~/.ssh/id_rsa.pub ssh_data/authorized_keys`

`mkdir ssh_data && cp -f ~/.ssh/id_rsa.pub ssh_data/authorized_keys`
`sudo chmod a+x -R ssh_data/`
`sudo chmod 777 -R ssh_data/`

`rm ssh_data/authorized_keys`


docker-compose up -d



### Docker build and push to repo

docker login --username=khawarhere

docker build -t cloudwaysdev/ansiblestretch .
docker build -t cloudwaysdev/ansiblestretch -f ./Dockerfile  .

docker build -t $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG .
docker build -t cloudwaysdev/ansiblestretch:latest .

docker push $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG
docker push cloudwaysdev/ansiblestretch:latest


### logs
sudo journalctl -fu docker.service