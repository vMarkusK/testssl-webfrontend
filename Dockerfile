############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
#FROM ubuntu
FROM alpine:3.5

# Install app dependencies
RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

# Install Flask
RUN pip3 install Flask

# File Author / Maintainer
MAINTAINER Markus Kraus

# Copy the application folder inside the container
ADD ./testssl.sh-webfrontend/ /testssl

# Expose ports
EXPOSE 5000

# Set the default directory where CMD will execute
WORKDIR /testssl

# Set the default command to execute    
CMD python3 SSLTestPortal.py