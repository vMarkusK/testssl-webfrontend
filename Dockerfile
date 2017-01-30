############################################################
# Dockerfile to build testssl.sh WebFrontend
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:16.10
ENV DEBIAN_FRONTEND noninteractive

# File Author / Maintainer
MAINTAINER Markus Kraus

# Install Packages
RUN apt-get -qq update --fix-missing && \
	apt-get --no-install-recommends -y install openssl net-tools dnsutils aha python3 python3-pip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install Flask && \
	apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy the application folder inside the container
ADD ./testssl.sh-webfrontend/ /testssl

# Create Log and  Result folder
RUN mkdir -p /testssl/log /testssl/result/json /testssl/result/html

# Expose ports
EXPOSE 5000

# Set the default directory where CMD will execute
WORKDIR /testssl

# Set the default command to execute    
CMD python3 SSLTestPortal.py