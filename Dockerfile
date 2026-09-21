FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY favicon.png /usr/share/nginx/html/favicon.png
COPY carpets.html /usr/share/nginx/html/carpets.html
COPY IMG_6388.jpeg /usr/share/nginx/html/IMG_6388.jpeg
COPY IMG_6389.jpeg /usr/share/nginx/html/IMG_6389.jpeg
COPY IMG_6390.jpeg /usr/share/nginx/html/IMG_6390.jpeg
CMD ["sh", "-c", "sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
