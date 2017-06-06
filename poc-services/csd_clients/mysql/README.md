

docker image build .

docker container run --name asz_mysql -d -p 3306:3306 madpole/mysql

docker container exec -it asz_mysql 'bash'