

docker image build -t madpole/mysql-client:latest .

docker container run --name asz_mysql_client -d madpole/mysql-client:latest

docker container exec -it asz_mysql_client 'bash'



