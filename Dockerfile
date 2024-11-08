FROM ubuntu:latest

# Instala Apache en Ubuntu
RUN apt-get update && apt-get install -y apache2

# Copia los archivos de la web al directorio de Apache
COPY ./web /var/www/html

# Expone el puerto 80
EXPOSE 80

# Inicia Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]