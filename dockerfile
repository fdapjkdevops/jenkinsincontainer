FROM jenkins/jenkins:lts
# FROM ubuntu:latest
USER root
RUN apt update -y
RUN apt upgrade -y
RUN apt install curl -y

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get update -qq \
   && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
  $(lsb_release -cs) \
  stable"
RUN echo This is atp-get again
RUN apt-get update  -qq \
   && apt-get -y install docker-ce
# RUN usermod -aG docker jenkins

