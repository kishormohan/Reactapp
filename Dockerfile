FROM nginx
RUN apt update
RUN mkdir -p /usr/share/nginx/html/static/css
RUN mkdir -p /usr/share/nginx/html/static/js
COPY ./static/js/* /usr/share/nginx/html/static/js/
COPY ./static/css/* /usr/share/nginx/html/static/css/
COPY * /usr/share/nginx/html
EXPOSE 8005
CMD ["nginx","-g","daemon off;"]
