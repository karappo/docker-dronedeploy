FROM php
MAINTAINER Naokazu Terada <naokazu.terada@gmail.com>
RUN apt-get update
RUN apt-get -y install ssh-askpass sshpass lftp rsync wget
RUN apt-get upgrade -y
RUN rsync -h
RUN wget -h