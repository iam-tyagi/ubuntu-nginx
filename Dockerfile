FROM ubuntu
RUN apt-get update 
RUN apt-get install -y nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default
COPY ankit.txt /var/www/html/ankit.txt
COPY avyay.txt /var/www/html/avyay.txt
CMD ["usr/sbin/nginx", "-g", "daemon-off"]