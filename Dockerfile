# Use an official NGINX image as the base image
FROM nginx

# Install the stress tool
RUN apt-get update && apt-get install -y stress

# Copy the custom index.html file to NGINX's web root
COPY index.html /usr/share/nginx/html

# Copy the scripts and set executable permission
COPY load_test.sh /usr/share/nginx/
COPY stress.sh /usr/share/nginx/

# Copy the load_test.sh script and set executable permission
COPY infi.sh /usr/share/nginx/

# Copy the custom NGINX configuration
COPY my-nginx.conf /etc/nginx/conf.d/

# Make the scripts executable
RUN chmod +x /usr/share/nginx/load_test.sh
RUN chmod +x /usr/share/nginx/infi.sh
RUN chmod +x /usr/share/nginx/stress.sh

# Expose the default NGINX port (80)
EXPOSE 80

