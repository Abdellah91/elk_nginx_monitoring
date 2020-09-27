#!/bin/bash


until $(curl --output /dev/null --silent --head --fail http://kibana:5601); do
    printf '.'
    sleep 10
done

logstash -f /usr/share/logstash/config/logstash.conf &

/usr/sbin/nginx -g "daemon off;"


