FROM redis
EXPOSE 26379
EXPOSE 6379
COPY ./redis.conf /etc/redis.conf
RUN chown redis:redis /etc/redis.conf   
COPY ./sentinel.conf /etc/sentinel.conf
RUN chown redis:redis /etc/sentinel.conf
COPY ./start.sh /usr/local/bin/
###DEBUG###
RUN apt-get update && apt-get install -y procps
###########
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["bash", "/usr/local/bin/start.sh"]
