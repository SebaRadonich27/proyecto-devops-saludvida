
# Imagen base de Nginx
FROM nginx:alpine

# Copiar los archivos de la aplicación web
COPY ./src/ /usr/share/nginx/html/

# Documentar el puerto utilizado por Nginx
EXPOSE 80
