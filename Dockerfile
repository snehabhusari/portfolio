# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files into Nginx's public directory
COPY sneha.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/
COPY pass.jpg /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
