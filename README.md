# tml-in-docker #
Dockerized TML Web System 

### 安裝Docker

    $ wget -qO- https://get.docker.com/ | sh
    $ sudo usermod -aG docker $(whoami)
    $ sudo systemctl enable docker.service
    $ sudo systemctl start docker.service

### 安裝Docker Compose

    $ sudo yum install epel-release
    $ sudo yum install -y python-pip
    $ sudo pip install docker-compose

### 安裝Rancher CLI
```bash
curl -LkSs https://github.com/rancher/cli/releases/download/v0.6.11/rancher-linux-amd64-v0.6.11.tar.gz | tar -xz && mv ./rancher-v0.6.11/rancher /bin/rancher && rm -rf ./rancher-v0.6.11
```

 ### 由Private register移除Docker Image

```bash
registry='localhost:5000'
name='my-image'
curl -v -sSL -X DELETE "http://${registry}/v2/${name}/manifests/$(
    curl -sSL -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "http://${registry}/v2/${name}/manifests/$(
            curl -sSL "http://${registry}/v2/${name}/tags/list" | jq -r '.tags[0]'
        )" \
    | awk '$1 == "Docker-Content-Digest:" { print $2 }' \
    | tr -d $'\r' \
)"
```