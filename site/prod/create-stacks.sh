export RANCHER_URL=http://localhost:8888
#Create Rancher Environment
rancher env create PROD
#Create Application Stacks
rancher --wait-state active --env PROD stack create TML-KHHW -f ./WHL-KHHW/docker-compose.yml -r ./WHL-KHHW/rancher-compose.yml
rancher --wait-state active --env PROD stack create TML-TXGW -f ./WHL-TXGW/docker-compose.yml -r ./WHL-TXGW/rancher-compose.yml