

docker image build -t madpole/flask-register-client .

docker container run --name asz_flask_register -d madpole/flask-register-client:latest

docker container run --name asz_flask_register -d -p 5000:5000 madpole/flask-register-client:latest

docker container exec -it asz_flask_register 'bash'