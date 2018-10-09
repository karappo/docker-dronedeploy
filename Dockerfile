FROM php
MAINTAINER Naokazu Terada <naokazu.terada@gmail.com>
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install ssh-askpass sshpass lftp rsync wget
RUN echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
RUN mkdir ~/.ssh && chmod 700 ~/.ssh
