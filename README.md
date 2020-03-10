# b2c-docker-script

1: install docker and docker-compose service
2: Create a base image using baseimage.Dockerfile by running the command

"docker build -f baseimage.Dockerfile -t ec2-user_web ."

3:  Run docker-compose.yml file by comand:

"docker-compose up --build -d"

This will start the docker service from compose file by creating a postgres instance and will start the application server
