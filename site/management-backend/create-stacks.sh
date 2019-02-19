export RANCHER_URL=http://localhost:8888
export IPADDRESS=$(hostname -i)
#Create Management Stacks
#Create necessary folders for volume mounting
mkdir -p /docker/nexus3/nexus-data
mkdir -p /docker/teamcity/data
mkdir -p /docker/teamcity/logs
chmod -R 777 /docker
rancher --wait-state active --env UAT stack create Management-Backend -f ./docker-compose.yml -r ./rancher-compose.yml