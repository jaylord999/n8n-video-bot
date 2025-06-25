FROM n8nio/n8n:latest

USER root

# Install tools with Alpine's package manager
RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip curl && \
    pip3 install --break-system-packages yt-dlp

USER node
WORKDIR /home/node
