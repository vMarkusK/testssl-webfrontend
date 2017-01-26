############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
#FROM ubuntu
FROM alpine:3.5

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

# Install app dependencies
RUN pip3 install Flask

# File Author / Maintainer
MAINTAINER Markus Kraus

# Add the application resources URL
#RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
#RUN apt-get update

# Install git
#RUN apt-get install -y git

# Install Python
#RUN apt-get install -y python3 python3-pip

# Add Python module Flask
#RUN pip3 install flask

# Install aha
#RUN apt-get install -y aha

# Clone Git Repo
#RUN git clone https://github.com/mycloudrevolution/testssl.sh-webfrontend.git

# Copy the application folder inside the container
ADD ./testssl.sh-webfrontend/ /testssl

# Expose ports
EXPOSE 80

# Set the default directory where CMD will execute
WORKDIR /testssl

# Set the default command to execute    
CMD python3 SSLTestPortal.py