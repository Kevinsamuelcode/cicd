FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y apache2 wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Change directory
WORKDIR /var/www/html

# Download and extract web files
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip && \
    unzip photogenic.zip && \
    rm photogenic.zip

# Expose port 80 on the container
EXPOSE 80

# Set the default application that will start when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
