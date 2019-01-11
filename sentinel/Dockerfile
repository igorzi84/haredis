FROM redis
EXPOSE 26379
COPY ./sentinel.conf /etc/sentinel.conf
RUN chown redis:redis /etc/sentinel.conf
COPY ./start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["bash", "/usr/local/bin/start.sh"]
