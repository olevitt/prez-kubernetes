FROM nginx
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html
COPY plugin /usr/share/nginx/html/plugin
COPY dist /usr/share/nginx/html/dist
COPY img /usr/share/nginx/html/img
COPY content /usr/share/nginx/html/content

CMD ["nginx", "-g", "daemon off;"]