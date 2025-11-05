FROM nginx:latest

# Supprime la configuration par défaut (souvent celle qui contient le "wordpress")
RUN rm /etc/nginx/conf.d/default.conf || true && \
    rm /etc/nginx/nginx.conf || true

# Créez le répertoire SSL
RUN mkdir -p /etc/nginx/ssl

# Installez openssl et générez les certificats
RUN apt-get update && apt-get install -y openssl && \
    openssl req -x509 -nodes \
    -out /etc/nginx/ssl/ft.crt \
    -keyout /etc/nginx/ssl/ft.key \
    -days 365 \
    -subj "/C=FR/ST=PACA/L=Nice/O=42/OU=42/CN=ft_transcendence.local"

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD echo "🚀 Lancement de Nginx..." && "nginx" "-g" "daemon off;"