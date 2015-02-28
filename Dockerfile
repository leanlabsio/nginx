FROM gliderlabs/alpine:latest

EXPOSE 80 443

RUN apk-install nginx \
    && mkdir -p /tmp/nginx/client-body

COPY ./nginx.conf /etc/nginx/nginx.conf

WORKDIR /etc/nginx

CMD ["nginx", "-g", "daemon off;"]
