FROM wity/apache
RUN zypper in -y php7 php7-gd php7-gettext php7-mbstring php7-mysql php7-pear apache2-mod_php7 php7-zip && zypper clean -a
RUN a2enmod php7
COPY index.php /srv/www/htdocs/
