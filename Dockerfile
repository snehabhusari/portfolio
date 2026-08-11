FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Create custom nginx config
RUN echo 'server { \
  listen 80; \
  server_name _; \
  root /usr/share/nginx/html; \
  index index.html; \
  \
  location / { \
    try_files $uri $uri/ /index.html; \
  } \
  \
  location ~* \.(css|js|jpg|jpeg|png|gif|ico)$ { \
    expires 1y; \
    add_header Cache-Control "public, immutable"; \
  } \
}' > /etc/nginx/conf.d/default.conf

# Copy portfolio files
COPY sneha.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY pass.jpg /usr/share/nginx/html/pass.jpg

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
