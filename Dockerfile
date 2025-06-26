# Usa un'immagine base di Nginx leggera
FROM nginx:alpine

# Rimuovi la configurazione predefinita di Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia la tua configurazione Nginx personalizzata
COPY nginx.conf /etc/nginx/conf.d/

# Copia i file della tua pagina web nella directory di Nginx
COPY . /usr/share/nginx/html

# Espone la porta 80
EXPOSE 80

# Avvia Nginx quando il container parte
CMD ["nginx", "-g", "daemon off;"]