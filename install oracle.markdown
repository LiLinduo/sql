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





