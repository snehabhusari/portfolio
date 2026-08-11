FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copy your files
COPY sneha.html ./index.html
COPY style.css ./style.css
COPY pass.jpg ./pass.jpg

# Copy nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
