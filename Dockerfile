FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Create new config inline
RUN cat > /etc/nginx/conf.d/default.conf <<'EOF'
server {
    listen 80 default_server;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
EOF

# Copy portfolio files  
COPY sneha.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY pass.jpg /usr/share/nginx/html/pass.jpg

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
