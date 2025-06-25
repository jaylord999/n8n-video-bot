# Stage 1: Get static ffmpeg binary
FROM mwader/static-ffmpeg:4.4.1-alpine AS ffmpeg

# Stage 2: Build n8n image
FROM n8nio/n8n:latest

USER root

# Copy static ffmpeg and ffprobe
COPY --from=ffmpeg /ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe

# Install yt-dlp via Alpine package manager
RUN apk update && \
    apk add --no-cache yt-dlp curl

USER node
WORKDIR /home/node
