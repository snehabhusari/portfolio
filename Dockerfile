FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy portfolio files
COPY sneha.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY pass.jpg /usr/share/nginx/html/pass.jpg

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
