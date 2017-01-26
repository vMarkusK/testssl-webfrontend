############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Markus Kraus

# Add the application resources URL
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python
RUN apt-get install -y python3

# Add Python module Flask
RUN pip3 install flask

# Install 
RUN apt-get install -y aha

# Clone Git Repo
RUN git clone https://github.com/mycloudrevolution/testssl.sh-webfrontend.git

# Copy the application folder inside the container
ADD / /testssl

# Expose ports
EXPOSE 80

# Set the default directory where CMD will execute
WORKDIR /testssl

# Set the default command to execute    
CMD python SSLTestPortal.py