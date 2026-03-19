FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/ui
COPY ui/ /var/www/ui/
EXPOSE 80
