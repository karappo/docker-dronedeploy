FROM php
MAINTAINER Naokazu Terada <naokazu.terada@gmail.com>
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install ssh-askpass sshpass lftp rsync wget
RUN echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
RUN mkdir ~/.ssh && chmod 700 ~/.ssh

# Install Composer
RUN apt-get install curl php-cli php-mbstring git unzip
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
