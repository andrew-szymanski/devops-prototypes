

docker image build -t madpole/mysql:latest .

docker container run --name asz_mysql -d -p 3306:3306 madpole/mysql:latest

docker container exec -it asz_mysql 'bash'

docker container logs asz_mysql 

