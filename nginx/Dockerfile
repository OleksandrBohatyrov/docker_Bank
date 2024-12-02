FROM nginx:latest

RUN ln -sf /usr/share/zoneinfo/Europe/Tallinn /etc/localtime && echo "Europe/Tallinn" > /etc/timezone


COPY nginx.conf /etc/nginx/nginx.conf
COPY ./sites-available /etc/nginx/sites-available

RUN mkdir -p /etc/nginx/sites-enabled && \
    ln -s /etc/nginx/sites-available/BohatyrovBankAPIBackend /etc/nginx/sites-enabled/

COPY ./site/BohatyrovBankAPIBackend /var/www/BohatyrovBankAPIBackend

RUN chmod -R 755 /var/www/ && \
    chmod -R 755 /etc/nginx/sites-available && \
    chmod -R 755 /etc/nginx/sites-enabled

RUN if [ -f /etc/nginx/sites-enabled/default ]; then rm /etc/nginx/sites-enabled/default; fi

CMD ["nginx", "-g", "daemon off;"]
