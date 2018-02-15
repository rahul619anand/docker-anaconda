# Use an official latest centos
FROM debian:8

MAINTAINER Rahul Anand <rahul619anand@gmail.com>

# Set the working directory to /app
WORKDIR /app

# Install anaconda

RUN apt-get update --fix-missing && apt-get install -y wget bzip2

RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh

RUN  printf 'yes\nyes\n\nyes' | bash Anaconda3-5.0.1-Linux-x86_64.sh

# Make port 7777 available to the world outside this container
EXPOSE 7777
