# !/bin/bash

clear

docker_compose_build=$1

# CERT_DIR="./conf/certs"
# if [ ! -f "$CERT_DIR/ssl.key" ]; then
#   mkdir -p $CERT_DIR
#   openssl genrsa 2048 > "$CERT_DIR/ssl.key"
#   openssl req -new -x509 -nodes -days 365 -subj "//C=VN\ST=HCM\L=HCM City\O=TDN\OU=TDN\CN=TDN" -key "$CERT_DIR/ssl.key" -out "$CERT_DIR/ssl.crt"
# fi

docker-compose down --remove-orphans 

# docker rm $(docker ps -aq)
# docker rmi $(docker images -aq)
# yes | docker volume prune

# mkdir -pm 777 data/mysql
# rm -rf ./data/mysql/*
chmod -R 0444 docker/mysql/*

docker-compose up $docker_compose_build
