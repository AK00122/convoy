FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY favicon.png /usr/share/nginx/html/favicon.png
CMD ["sh", "-c", "sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
