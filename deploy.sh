chmod +x deploy.sh
sudo docker pull sprabhune/Hellonode:master
sudo docker stack deploy --compose-file docker-compose.yml HelloNodeWebStack
