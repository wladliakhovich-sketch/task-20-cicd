FROM nginx:alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY html/ /usr/share/nginx/html/
COPY images/ /usr/share/nginx/images/
COPY music/ /usr/share/nginx/music/
COPY app/ /usr/share/nginx/html/app/
