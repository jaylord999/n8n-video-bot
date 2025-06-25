FROM n8nio/n8n:latest

USER root

# Use Alpine's package manager to install ffmpeg, python3, pip
RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip curl && \
    pip3 install --no-cache-dir yt-dlp

USER node
WORKDIR /home/node
