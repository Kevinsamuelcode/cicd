FROM httpd:latest

# Install wget to download files
RUN apt-get update && apt-get install -y wget

# Download the Free CSS template
RUN wget -P /usr/local/apache2/htdocs/ \
    https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip

# Extract the template
RUN apt-get install -y unzip && \
    unzip /usr/local/apache2/htdocs/photogenic.zip -d /usr/local/apache2/htdocs/ && \
    rm /usr/local/apache2/htdocs/photogenic.zip

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]
