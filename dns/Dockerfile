FROM ubuntu:latest

RUN apt-get clean && apt-get update && apt-get install -y bind9

RUN ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime && echo "Europe/Tallinn" > /etc/timezone

RUN mkdir -p /etc/bind/zones

COPY ./bind /etc/bind/

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/named", "-g"]
