FROM n8nio/n8n:latest

USER root

# Install yt-dlp and ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg curl python3-pip && \
    pip install yt-dlp

USER node

# Set default working directory
WORKDIR /home/node
