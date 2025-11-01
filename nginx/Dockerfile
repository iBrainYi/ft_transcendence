FROM nginx:latest

# Supprime la configuration par défaut (souvent celle qui contient le "wordpress")
RUN rm /etc/nginx/conf.d/default.conf || true
RUN rm /etc/nginx/nginx.conf || true

FROM nginx:latest

# Copie de la conf principale et de ta conf de site
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY ssl /etc/nginx/ssl

EXPOSE 443

CMD echo "🚀 Lancement de Nginx..." && nginx -g "daemon off;"

