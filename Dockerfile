# Use official Ubuntu image
FROM ubuntu:22.04

# Install NGINX
RUN apt update && apt install -y nginx

# Copy custom index.html to the right directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
