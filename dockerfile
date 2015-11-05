#FORM centos

#install php
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm \
    && yum -y install php55w php55w-common php55w-mysqlnd php55w-pdo php55w-mbstring php55w-mcrypt php55w-xml php55w-gd

#install mysql
RUN yum -y install mysql

#install apache
RUN yum -y install httpd

#install redis
RUN yum -y install redis

#install git
RUN yum -y install git

#install composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer