FROM ubuntu:16.04
MAINTAINER Bryer Jeannotte bryjeannotte@gmail.com
ARG USER_ID=1000

RUN apt-get update && apt-get install -y firefox
RUN useradd webuser -m -u $USER_ID
