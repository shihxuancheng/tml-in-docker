tag="khhwtml02t.wanhai.com:8182/wanhai/tml/khhw/wildfly-tml-khhw:latest"
docker build --rm -t ${tag} .
docker push ${tag}
docker container prune -f && docker image prune -f && docker volume prune -f && docker network prune -f 