FROM centos:7

RUN set -x && \
#yum update && \
yum -y install bison flex gcc iproute lsof nmap perl readline-devel sudo unzip wget zlib-devel && \
yum clean all

COPY aipo-latest-linux-x64.tar.gz ./

RUN set -x && \
tar zxf aipo-* && \
cd aipo-* && \
sh installer.sh /srv/aipo && \
cd .. && \
rm -fr aipo-* && \
cp -a /srv/aipo/postgres/data /srv/aipo/postgres/data.new && \
rm -fr /srv/aipo/postgres/data/*

ADD aipo-wrapper.sh /srv/aipo/bin/aipo-wrapper.sh
RUN chmod a+x /srv/aipo/bin/aipo-wrapper.sh

VOLUME /srv/aipo/postgres/data

EXPOSE 80

CMD /srv/aipo/bin/aipo-wrapper.sh
