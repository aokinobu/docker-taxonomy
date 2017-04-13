FROM aokinobu/virtuoso:v7.2.4.2
MAINTAINER Nobuyuki Paul Aoki <aokinobu@gmail.com>

ADD ./taxonomy.ttl /taxonomy.ttl
#RUN /usr/local/virtuoso-opensource/bin/isql -h
#ENTRYPOINT /sbin/sysctl -w vm.swappiness=10; /run.sh

ADD ./rdfloader.sql /rdfloader.sql
ADD ./loadrdfloader.sql /loadrdfloader.sql
ENV PATH="/usr/local/virtuoso-opensource/bin/:${PATH}"
#ld_dir ('/', 'taxonomy.ttl', 'http://taxonomy');
#RUN isql 1111 dba dba /loadrdfloader.sql

CMD ["/run.sh"]
