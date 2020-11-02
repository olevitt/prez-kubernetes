FROM node:14
COPY dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]