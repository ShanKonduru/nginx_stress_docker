# Use an official NGINX image as the base image
FROM nginx

# Install the stress tool
RUN apt-get update
RUN apt-get install -y stress 
RUN apt-get install -y stress-ng

# Copy the custom index.html file to NGINX's web root
COPY index.html /usr/share/nginx/html

# Copy the custom NGINX configuration
COPY my-nginx.conf /etc/nginx/conf.d/

# Expose the default NGINX port (80)
EXPOSE 80

