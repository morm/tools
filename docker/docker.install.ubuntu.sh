#!/bin/sh
apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main>/etc/apt/sources.list.d/docker.list
apt-get update
apt-cache policy docker-engine

apt-get update
apt-get install docker-engine
service docker status

usermod -aG docker `echo $USER`
newgrp docker

docker run hello-world
