FROM docker.n8n.io/n8nio/n8n:1.116.2

# Install ffmpeg (Alpine base)
USER root
RUN apk update && apk add --no-cache ffmpeg
USER node
