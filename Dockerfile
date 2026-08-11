FROM nginx:alpine

# Purani default file hatayein
RUN rm -rf /usr/share/nginx/html/*

# Apni saari files copy karein
COPY sneha.html /usr/share/nginx/html/sneha.html
COPY style.css /usr/share/nginx/html/style.css
COPY pass.jpg /usr/share/nginx/html/pass.jpg

# Ek default index.html bhi bana dein jo sneha.html par redirect kare (agar zaroorat ho)
RUN echo '<meta http-equiv="refresh" content="0; URL=sneha.html">' > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
