############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
#FROM ubuntu
FROM alpine:3.5

# Install python3 and aha
RUN apk add --no-cache aha python3 python3-pip

# Install Flask
RUN pip3 install Flask

# File Author / Maintainer
MAINTAINER Markus Kraus

# Copy the application folder inside the container
ADD ./testssl.sh-webfrontend/ /testssl

# Create Log folder
RUN mkdir /testssl/log

# Create Result folder
RUN mkdir -p /testssl/result/json
RUN mkdir -p /testssl/result/html

# Expose ports
EXPOSE 5000

# Set the default directory where CMD will execute
WORKDIR /testssl

# Set the default command to execute    
CMD python3 SSLTestPortal.py