## build image
docker build -t cloudwaysdev/ansiblestretch:latest .

## push image
docker push cloudwaysdev/ansiblestretch:latest

## Remove all stopped containers
docker rm $(docker ps -a -q)

## Remove all  unused images
docker image prune


### Docker build and push to repo

docker login --username=khawarhere

docker build -t cloudwaysdev/ansiblestretch .
docker build -t cloudwaysdev/ansiblestretch -f ./Dockerfile  .

docker build -t $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG .
docker build -t cloudwaysdev/ansiblestretch:latest .

docker push $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG
docker push cloudwaysdev/ansiblestretch:latest




`docker-compose up`

``
```
docker network create --gateway 172.5.0.1 --subnet 172.5.0.0/16 --driver bridge ansible_nw

docker network inspect ansible_nw

docker network ls