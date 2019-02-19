export RANCHER_URL=http://localhost:8888
export IPADDRESS=$(hostname -i)

#Create Rancher Environment
rancher env create UAT
#Create Application Stacks
rancher --wait-state active --env UAT stack create TML-KHHW -f ./TML-KHHW/docker-compose.yml -r ./TML-KHHW/rancher-compose.yml
rancher --wait-state active --env UAT stack create TML-TXGW -f ./TML-TXGW/docker-compose.yml -r ./WHL-TXGW/rancher-compose.yml