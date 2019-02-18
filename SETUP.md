# tml-in-docker #
Dockerized TML Web System 

### 安裝Docker & Docker Compose
General Linux

    $ wget -qO- https://get.docker.com/ | sh
    $ sudo usermod -aG docker $(whoami)
    $ sudo systemctl enable docker.service
    $ sudo systemctl start docker.service

    $ sudo yum install epel-release
    $ sudo yum install -y python-pip
    $ sudo pip install docker-compose

Redhat RHEL 7

    $ yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    $ yum makecache fast
    $ yum install http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.42-1.gitad8f0f7.el7.noarch.rpm
    $ yum install docker-ce
    $ yum install docker-compose


#### 注意事項

- 若docker host在proxy之後

    請參考 https://docs.docker.com/config/daemon/systemd/#custom-docker-daemon-options

- 使用insecure registry

    請參考 https://docs.docker.com/registry/insecure/


### 安裝Rancher CLI
```bash
curl -LkSs https://github.com/rancher/cli/releases/download/v0.6.11/rancher-linux-amd64-v0.6.11.tar.gz | tar -xz && mv -f ./rancher-v0.6.11/rancher /bin/rancher && rm -rf ./rancher-v0.6.11
```

 ### 由Private register移除Docker Image (未驗證)

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