Embian ARMS Testing Tool
=====================
This project is a testing tool for [Embian ARMS](https://github.com/kyoungmo-yang/embian-arms-docker).

Building
-----

1. Build and run Embian ARMS.
See [Embian ARMS](https://github.com/kyoungmo-yang/embian-arms-docker).

2. Build and run arms-fluentd-docker image

To create the image `yjj0309/arms-fluentd-docker`, execute the following command on arms-fluentd-docker folder:

    docker build -t yjj0309/arms-fluentd-docker:last .

Or download automated build from public [Docker Hub Registry](https://registry.hub.docker.com/u/yjj0309/arms-fluentd-docker/):

    docker pull yjj0309/arms-fluentd-docker


Running
--------------------------
Refer to Embian ARMS for settings the enviroments such as DEFAULT_USER, DEFAULT_PASS and HOST_NAME.

    docker run -d --name embian_arms_fluentd -e DEFAULT_USER="arms_user" -e DEFAULT_PASS="arms_pass" -e HOST_NAME="`echo $(/bin/ip route get 8.8.8.8 | /usr/bin/head -1 | /usr/bin/cut -d' ' -f8)`" yjj0309/arms-fluentd-docker:last


After few seconds, open http://<HOST_NAME> to see the dashboard web page.
