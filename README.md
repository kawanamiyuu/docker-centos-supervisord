docker-centos-supervisord
==============

Docker container with supervisord, rsyslogd, crond, sshd, httpd on CentOS by Vagrant (not docker provider)

## Build and Run container

```vagrant up``` and ```vagrant ssh```,

```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS                                      NAMES
6e1af309faee        centos:spvsd        /usr/bin/supervisord   4 seconds ago       Up 3 seconds        0.0.0.0:80->80/tcp, 0.0.0.0:2222->22/tcp   kickass_mccarthy
```

Access ```http://192.168.33.10/``` in your browser, Apache sample page is displayed.

## SSH into container

from Vagrant

```bash
# ssh into Vagrant from local
$ vagrant ssh

# confirm container IP Address
$ docker inspect 6e1af309faee | grep IPAddress
        "IPAddress": "172.17.0.2",

# ssh into container
$ ssh root@172.17.0.2 # password: root
```

from Local

```bash
# ssh into container
$ ssh root@192.168.33.10 -p 2222 # password: root
```

