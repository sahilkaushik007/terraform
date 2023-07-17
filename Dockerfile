# Use the base image with the desired Linux distribution
FROM ubuntu:latest

# Update the package index and install Apache HTTP Server
RUN apt-get update && apt-get install -y apache2

# Expose port 80 for HTTP traffic
EXPOSE 80
EXPOSE 90
Expose 100
# Start Apache HTTP Server when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
