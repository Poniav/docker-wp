FROM wordpress:latest

# Set the correct file ownership
#RUN chown -R www-data:www-data /var/www/html

# Modify the index.php file to load wp-config.php from a different location
# RUN sed -i "s/require( dirname( __FILE__ ) . '\/wp-config.php' );/require( dirname( __FILE__ ) . '/../wp-config.php' );/g" /var/www/html/index.php
