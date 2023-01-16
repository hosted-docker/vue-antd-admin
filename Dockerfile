FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD docs/.vuepress/dist  /usr/share/nginx/html/mirror/vue-antd-admin-docs

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]