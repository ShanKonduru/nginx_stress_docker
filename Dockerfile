# Use an official NGINX image as the base image
FROM nginx

# Install the stress tool
RUN apt-get update && apt-get install -y stress

# Copy the custom index.html file to NGINX's web root
COPY index.html /usr/share/nginx/html

# Copy the load_test.sh script and set executable permission
COPY load_test.sh /usr/share/nginx/

# Copy the custom NGINX configuration
COPY my-nginx.conf /etc/nginx/conf.d/

# Expose the default NGINX port (80)
EXPOSE 80

# Make the script executable
RUN chmod +x /usr/share/nginx/load_test.sh

# Start NGINX and run the load_test.sh script
CMD ["nginx", "-g", "daemon off;"]

