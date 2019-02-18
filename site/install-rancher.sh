export RANCHER_URL=http://localhost:8888
#Create necessary folders for volume mounting
mkdir -p -m 777 /docker/mysql
mkdir -p -m 777 /docker/log
chmod -R 777 /docker/*
# install rancher cli
curl -LkSs https://github.com/rancher/cli/releases/download/v0.6.11/rancher-linux-amd64-v0.6.11.tar.gz | tar -xz && mv -f ./rancher-v0.6.11/rancher /bin/rancher && rm -rf ./rancher-v0.6.11
docker-compose up -d