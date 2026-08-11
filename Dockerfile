FROM nginx:alpine

# Purani default file hatayein
RUN rm -rf /usr/share/nginx/html/*

# Apni saari files copy karein
COPY sneha.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY pass.jpg /usr/share/nginx/html/pass.jpg

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
