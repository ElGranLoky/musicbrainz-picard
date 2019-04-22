FROM jlesage/baseimage-gui:ubuntu-18.04

LABEL maintainer="carvajal.diego@gmail.com"

# Update and Add musicbrainz Repo
RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository ppa:musicbrainz-developers/stable

# Install musicbrainz
RUN apt-get update && \
    apt-get -y install picard

# Define Run
ENV APP_NAME="musicbrainz"
COPY startapp.sh /startapp.sh
