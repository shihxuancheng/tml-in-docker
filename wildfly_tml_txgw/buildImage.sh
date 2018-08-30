tag="khhwtml02t.wanhai.com:8182/wanhai/tml/txgw/wildfly-tml-txgw:latest"
docker build --rm -t ${tag} .
docker push ${tag}
docker container prune -f && docker image prune -f && docker volume prune -f && docker network prune -f 