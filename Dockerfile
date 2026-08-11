FROM nginx:alpine
# Agar files 'html' naam ke folder ke andar hain:
COPY html/ /usr/share/nginx/sneha.html
EXPOSE 80
