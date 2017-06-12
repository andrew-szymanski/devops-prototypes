

docker image build -t madpole/flask-mysql-client .

docker container run --name asz_flask_mysql_client -d -p 5000:5000 madpole/flask-mysql-client:latest

docker container exec -it asz_flask_mysql_client 'bash'