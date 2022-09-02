
FROM ubuntu:18.04

LABEL maintainer "arafatansari"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    debconf-utils && \
    echo mariadb-server mysql-server/root_password password qdpm | debconf-set-selections && \
    echo mariadb-server mysql-server/root_password_again password qdpm | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mariadb-server \
    php \
    php-mysql \
    php-pgsql \
    php-pear \
    php-gd \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY php.ini /etc/php5/apache2/php.ini
COPY web app /var/www/html/

RUN chmod 777 /var/www/html/core/cache | chmod 777 /var/www/html/core/log | chown www-data:www-data -R /var/www/html/ && \
    rm /var/www/html/index.html

RUN service mysql start && \
    sleep 3 && \
    mysql -uroot -pqdpm -e "CREATE USER username@localhost IDENTIFIED BY 'password';CREATE DATABASE qdpm;GRANT ALL privileges ON qdpm.* TO username@localhost;FLUSH PRIVILEGES;"

EXPOSE 80

COPY main.sh /
ENTRYPOINT ["/main.sh"]

COPY main.sh /
ENTRYPOINT ["/main.sh"]
