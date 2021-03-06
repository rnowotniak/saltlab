# saltlab
Personal Saltstack lab environment in Docker (Centos7 containers)

Contact: Robert Nowotniak <rnowotniak@gmail.com>

Tested on ArchLinux as the Docker host.


## Quick start

    git clone https://github.com/rnowotniak/saltlab
    docker pull rnowotniak/saltlab

    cd saltlab
    docker-compose up

![docker-compuse up output](img/docker-compose-up.png)

Enter the Salt master container, accept all minions keys:


    docker exec -it salt1 bash -l
    salt-key
    salt-key -A -y

![salt-key output](img/salt-key.png)

Run some tests from Salt master to the minions:

    salt '*' test.ping

![salt test.ping output](img/testping.png)
    
Change number of minions dynamically:

    docker-compose up --scale minions=6


----------


## Some useful commands:

    docker pull centos:centos7
    docker run -it --rm centos:centos7

    yum install salt-master
    yum install salt-minion

    vi /etc/salt/minion  (update master: hostname)

    /usr/bin/salt-master -d
    /usr/bin/salt-minion -d -l info

    tail /var/log/salt/{master,minion}

    salt-key
    salt-key -A


    docker build -t rnowotniak/saltlab .
    docker run --name salt1 --rm rnowotniak/saltlab

    docker-compose
    up  ( -d )
    scale minions=3
    logs master
    ps
    restart minions
    run
    stop


## Some useful links:

* https://docs.saltstack.com/en/latest/topics/installation/rhel.html
* https://docs.docker.com/compose/gettingstarted/
* https://docs.docker.com/engine/reference/run/
* https://docs.docker.com/compose/django/
