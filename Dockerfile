# Use official PHP image with Apache
FROM php:8.2-apache

# Enable mod_rewrite for Apache (if you need .htaccess)
RUN a2enmod rewrite

# Copy all files into the Apache server root
COPY newrepo/bloodbank/. /var/www/html/

# Set working directory (optional but good practice)
WORKDIR /var/www/html/

# Set correct permissions (optional)
RUN chown -R www-data:www-data /var/www/html

