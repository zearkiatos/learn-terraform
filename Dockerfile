FROM nginx
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY docker/hello-world.conf /etc/nginx/conf.d/hello-world.conf
RUN mkdir -p /usr/share/nginx/html/hello
COPY index.html /usr/share/nginx/html/hello/index.html
EXPOSE 80