FROM nginx:mainline-alpine
COPY default.conf /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]