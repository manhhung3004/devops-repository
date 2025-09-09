FROM nginx
COPY ./certificate/cloudflare/server.pem /etc/ssl/certs/server.pem
COPY ./certificate/cloudflare/key.pem /etc/ssl/private/key.pem
COPY ./certificate/cloudflare/fullchain.pem /etc/ssl/certs/fullchain.pem
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./page-not-found.html /var/www/html/page-not-found.html
COPY ./includes/ /etc/nginx/includes/
    