FROM docker.n8n.io/n8nio/n8n:1.117.3

# Install ffmpeg (Alpine base)
USER root
RUN apk update && apk add --no-cache ffmpeg
USER node
