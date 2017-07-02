FROM docker

MAINTAINER Zeyu Ye <Shuliyey@gmail.com>

RUN apk add --update curl

ADD https://github.com/rancher/cli/releases/download/v0.6.1-rc1/rancher-linux-amd64-v0.6.1-rc1.tar.gz /

RUN curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m` > /usr/local/bin/dapper \
  && chmod +x /usr/local/bin/dapper \
  && echo "ipv6" >> /etc/modules

RUN rm -rf ~/* \
  && rm -rf /var/cache/apk/* \

ENTRYPOINT []

CMD ["ash"]
