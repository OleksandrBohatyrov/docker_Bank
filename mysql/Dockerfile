FROM mysql:8.0

RUN ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime && echo "Europe/Tallinn" > /etc/timezone


ENV MYSQL_ROOT_PASSWORD=123
ENV MYSQL_DATABASE=user_balance_db
ENV MYSQL_USER=oleksandr2
ENV MYSQL_PASSWORD=123


COPY create_user.sql /docker-entrypoint-initdb.d/


WORKDIR /var/lib/mysql


EXPOSE 3306
