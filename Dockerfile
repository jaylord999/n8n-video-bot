FROM n8nio/n8n:latest

USER root

# Install ffmpeg, curl, python3, pip, and yt-dlp using Alpine's apk
RUN apk update && \
    apk add --no-cache ffmpeg curl python3 py3-pip && \
    pip3 install --no-cache-dir yt-dlp

USER node

WORKDIR /home/node
