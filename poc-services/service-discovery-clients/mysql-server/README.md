

docker image build -t madpole/mysql-server:latest .

docker container run --env URI=https://hostname:4032/api/vi1 --name asz_mysql_server -d -p 3306:3306 madpole/mysql-server:latest

docker container exec -it asz_mysql_server 'bash'

docker container logs asz_mysql_server 

