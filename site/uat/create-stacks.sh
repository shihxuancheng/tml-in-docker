export RANCHER_URL=http://localhost:8888
export IPADDRESS=$(hostname -i)

#Create Rancher Environment
rancher env create UAT
#Create Application Stacks
rancher --wait-state active --env UAT stack create TML-KHHW -f ./WHL-KHHW/docker-compose.yml -r ./WHL-KHHW/rancher-compose.yml
rancher --wait-state active --env UAT stack create TML-TXGW -f ./WHL-TXGW/docker-compose.yml -r ./WHL-TXGW/rancher-compose.yml
#Create Management Stacks
#Create necessary folders for volume mounting
mkdir -p -m 777 /docker/nexus3/nexus-data
mkdir -p -m 777 /docker/teamcity/data
mkdir -p -m 777 /docker/teamcity/logs
chmod -R 777 /docker/*
rancher --wait-state active --env UAT stack create Management-Backend -f ./Management-Backend/docker-compose.yml -r ./Management-Backend/rancher-compose.yml