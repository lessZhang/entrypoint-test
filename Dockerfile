FROM alpine 

LABEL author=szh 

ADD apache-tomcat-9.0.12.tar.gz /

COPY entrypoint.sh /bin/entrypoint.sh

COPY default.conf /etc/nginx/conf.d/default.conf

RUN    echo -e "https://mirrors.aliyun.com/alpine/v3.8/main\nhttps://mirrors.aliyun.com/alpine/v3.8/community" > /etc/apk/repositories \
    && apk add --no-cache nginx openjdk8-jre-base \
    && chmod +x /bin/entrypoint.sh \
    && mkdir /data \
    && echo test >/data/index.html \
    && mkdir /run/nginx

ENTRYPOINT ["/bin/entrypoint.sh"]

CMD ["-h"]
