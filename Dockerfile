FROM nginx
RUN rm /usr/share/nginx/html/index.html
COPY dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]