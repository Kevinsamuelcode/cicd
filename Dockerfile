FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    mysql-client \
    python3 \
    python3-flask \
    python3-pymysql \
    python3-boto3

# Create the /app directory
RUN mkdir /app

# Set the working directory
WORKDIR /app

# Copy specific files and directories from the host to the container
COPY __pycache__/* templates/* config.py EmpApp.py readme ./

# Expose the desired port
EXPOSE 80

# Set the entrypoint command to run the application
CMD ["python3", "EmpApp.py"]
