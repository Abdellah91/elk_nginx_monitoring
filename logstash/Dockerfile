FROM logstash:7.9.1
USER root

RUN yum -y update && yum -y install epel-release && \
    yum -y install nginx && yum clean all
COPY ./nginx_config/nginx.conf /etc/nginx/

EXPOSE 80
EXPOSE 443

COPY ./logstash_config/pattern /usr/share/logstash/config/pattern
COPY ./logstash_config/logstash.conf /usr/share/logstash/config/
COPY ./logstash_config/logstash.yml /usr/share/logstash/config/
COPY ./start.sh /

RUN cd / && chmod u+x start.sh

CMD ["/bin/bash", "/start.sh"]
