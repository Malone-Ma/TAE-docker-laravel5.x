#FROM centos

RUN yum -y update

#install php5.5
RUN rpm -Uvh --replacefiles https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm  \
    && yum -y install \
              php55w  \
              php55w-common \
              php55w-mysqlnd \
              php55w-pdo \
              php55w-mbstring \
              php55w-mcrypt \
              php55w-xml \
              php55w-gd

#instal mariadb (if you want install mysql,please remove it)
RUN yum -y install mariadb-server mariadb

#or install mysql5.6 (if you want install mysql, can use it)
#RUN rpm -Uvh --replacefiles http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm \
    && yum -y install mysql-community-server


#install apache(default v2.4)
RUN yum -y install httpd

#or install nginx(latest stable version)
#RUN rpm -Uvh --replacefiles http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm \
    && yum -y install nginx

#install redis(default v2.8)
RUN yum -y install redis

#install git
RUN yum -y install git

#install composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN yum clean all