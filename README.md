# tml-in-docker #
Dockerized TML Web System 

安裝Docker

    $ wget -qO- https://get.docker.com/ | sh
    $ sudo usermod -aG docker $(whoami)
    $ sudo systemctl enable docker.service
    $ sudo systemctl start docker.service

安裝Docker Compose

    $ sudo yum install epel-release
    $ sudo yum install -y python-pip
    $ sudo pip install docker-compose

