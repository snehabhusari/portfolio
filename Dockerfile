# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy your portfolio files into Nginx's default public directory
COPY . /usr/share/nginx/sneha.html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
