export RANCHER_URL=http://localhost:8888
#Create Rancher Environment
rancher env create PROD
#Create Application Stacks
rancher --wait-state active --env PROD stack create TML-KHHW -f ./TML-KHHW/docker-compose.yml -r ./TML-KHHW/rancher-compose.yml
rancher --wait-state active --env PROD stack create TML-TXGW -f ./TML-TXGW/docker-compose.yml -r ./TML-TXGW/rancher-compose.yml