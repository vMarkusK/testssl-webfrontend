############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
#FROM ubuntu
FROM alpine:3.5

# Install Packages
RUN apk add --no-cache aha python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install Flask && \
    rm -r /root/.cache

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
#CMD python3 SSLTestPortal.py
CMD python3 SSLTestPortal.py