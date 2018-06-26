install ORACLE XE 11

Download and Install Docker for Mac from the Docker Store
https://store.docker.com/editions/community/docker-ce-desktop-mac

look for a version in the hub then open Terminal and pull
https://hub.docker.com/r/alexeiled/docker-oracle-xe-11g/
docker pull alexeiled/docker-oracle-xe-11g

Put your *.sql files for database init into some local folder and mount this folder during 
container startup to /etc/entrypoint-initdb.d volume.
docker run -d -t --shm-size=1g -p 1521:1521 -v ~/local-initdb:/etc/entrypoint-initdb.d alexeiled/docker-oracle-xe-11g

docker exec -it c46f41cc2f7f /bin/bash

echo $ORACLE_SID

sqlplus system/oracle@//localhost:1521/orcl

log in system/oracle

-----------–––––––––
# DOCKER 

on docker looks like this

https://oraclespin.com/2018/03/30/docker-installation-of-oracle-database-12c-on-mac/#comment-7630
https://docs.docker.com/docker-for-mac/install/#install-and-run-docker-for-mac

docker start oracle-xe-11g


onespeedvelo ~ $ docker exec -it oracle-xe-11g /bin/bash
root@64e73c8355df:/# prompt s
bash: prompt: command not found
root@64e73c8355df:/# echo $ORACLE_SID
XE
root@64e73c8355df:/# sqlplus system/oracle@//localhost:1521/orcl

SQL*Plus: Release 11.2.0.2.0 Production on Tue Jun 12 13:08:26 2018

Copyright (c) 1982, 2011, Oracle.  All rights reserved.

ERROR:
ORA-12514: TNS:listener does not currently know of service requested in connect
descriptor


Enter user-name: system
Enter password: oracle

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> prompt e         
e
SQL> exit
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
root@64e73c8355df:/# 

Namespaces
Much of the macOS file system that is accessible to the user is also available to containers 
using the -v bind mount syntax. The following command runs a container from an image called r-base 
and shares the macOS user’s ~/Desktop/ directory as /Desktop in the container.

$ docker run -it -v ~/Desktop:/Desktop r-base bash
$ docker run -it -v ~/Desktop:/Desktop wnameless/oracle-xe-11g:latest /bin/bash

The user’s ~/Desktop/ directory is now visible in the container as a directory under /.

https://community.toadworld.com/platforms/oracle/w/wiki/11638.using-oracle-database-with-docker-engine

https://stevenfeuersteinonplsql.blogspot.com/2017/05/getting-my-oracle-database-12c-release.html

http://www.siue.edu/~dbock/cmis450/6-relationalmodel.htm
https://geeksocket.in/blog/oracle-db-xe-docker/
https://hub.docker.com/r/wnameless/oracle-xe-11g/




onespeedvelo ~ $ docker run -d -t --shm-size=1g -p 1523:1523 -v ~/local-initdb:/etc/entrypoint-initdb.d alexeiled/docker-oracle-xe-11g 
528115b2e4832102488324966d9d60eb7325f7ba2ac26682a05415adfc9c50db

docker container ls

docker logs -f 528115b2e483

Starting Oracle Net Listener.
Starting Oracle Database 11g Express Edition instance.

Database init...
/start.sh: running /etc/entrypoint-initdb.d/constraints.sql
ERROR:
ORA-28002: the password will expire within 7 days



DROP TABLE t_person
           *
           End init.
Oracle started successfully!

(new bash)
docker exec -it oracle-xe-11g /bin/bash
echo $ORACLE_SID
sqlplus system/oracle@//localhost:1521/orcl


https://oraclespin.com/2018/03/30/docker-installation-of-oracle-database-12c-on-mac/
https://hub.docker.com/r/alexeiled/docker-oracle-xe-11g/

https://www.techonthenet.com/oracle/tables/create_table.php






//start docker
open -a Docker

//check versions
docker --version
docker-compose --version
docker-machine --version

// this will create a container containing hello world and output it on your screen
docker run hello-world

//Start a Dockerized web server. docker will download the nginx container
//go to http://localhost/ to view the nginx homepage. Because we specified the default HTTP port, 
//it isn’t necessary to append :80 at the end of the URL.
docker run -d -p 80:80 --name webserver nginx

//check the containers running already
docker container ls 
docker ps  //same as above

$ docker container ls
$ docker container stop webserver
$ docker container ls -a  // see all
$ docker container rm webserver
$ docker image ls
$ docker image rm nginx
+++++++++++++++++++++++++++++++++++++++

docker pull sath89/oracle-xe-11g


docker info

Along with this, make sure your programs inside the docker container are not writing many/huge files to the file system.

Check your running docker process's space usage size

docker ps -s #may take minutes to return
or for all containers, even exited

docker ps -as #may take minutes to return
You can then delete the offending container/s

docker rm <CONTAINER ID>
Find the possible culprit which may be using gigs of space

docker exec -it <CONTAINER ID> "/bin/sh"
du -h








