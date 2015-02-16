FROM gliderlabs/alpine

RUN apk --update add nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /tmp/nginx/client-body

WORKDIR /etc/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
