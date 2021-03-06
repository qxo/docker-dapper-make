FROM docker

#MAINTAINER Zeyu Ye <Shuliyey@gmail.com>

RUN apk add --no-cache --update bash curl make git openssl && rm -rf ~/* \
  && rm -rf /var/cache/apk/* 

RUN curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m` > /usr/local/bin/dapper \
  && chmod +x /usr/local/bin/dapper \
  && echo "ipv6" >> /etc/modules

#ENTRYPOINT []

CMD ["ash"]
