docker pull mysql

docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql-A -d -p 3305:3305 mysql

docker exec -it mysql-A bash

mysql -u root -p --protocol=tcp


CREATE DATABASE aula;
show databases;

docker inspect mysql-A

