FROM library/alpine:latest

RUN export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin
RUN apk  update
RUN apk add bash
RUN cat /etc/*ease
RUN apk  add  nginx
ADD nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/site
ADD index.html /var/www/site/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

RUN apk info|grep -i nginx
