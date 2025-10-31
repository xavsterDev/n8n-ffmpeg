# Dockerfile

# ⬇️ allow version to be passed from workflow
ARG BASE_TAG=1.116.2
FROM docker.n8n.io/n8nio/n8n:${BASE_TAG}

# Install ffmpeg (Alpine base)
USER root
RUN apk update && apk add --no-cache ffmpeg
USER node
