FROM nginx
COPY ./ /usr/share/nginx/html

RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx

RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf
EXPOSE 8081

RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf