# saltlab
Personal Saltstack lab environment in Docker (Centos7 containers)


Quick start

docker pull rnowotniak/saltlab
git clone https://github.com/rnowotniak/saltlab

docker-compose up

docker exec -it salt1 bash -l
salt-key
salt-key -A -y

salt '*' test.ping

docker-compose up --scale minions=6



----------

docker pull centos:centos7
docker run -it --rm centos:centos7

https://docs.saltstack.com/en/latest/topics/installation/rhel.html
https://docs.docker.com/compose/gettingstarted/
https://docs.docker.com/engine/reference/run/
https://docs.docker.com/compose/django/


salt yum.repo

yum install salt-master
yum install salt-minion

vi /etc/salt/minion  (update master: hostname)

/usr/bin/salt-master -d
/usr/bin/salt-minion -d -l info

tail /var/log/salt/{master,minion}

salt-key
salt-key -A

---
docker build -t rnowotniak/saltlab .
docker run --name salt1 --rm rnowotniak/saltlab
--
docker-compose
up  ( -d )
scale minions=3
logs master
ps
restart minions


ps
run
stop

