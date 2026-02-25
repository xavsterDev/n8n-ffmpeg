# Dockerfile

# ⬇️ allow version to be passed from workflow
ARG BASE_TAG=2.7.5
FROM docker.n8n.io/n8nio/n8n:${BASE_TAG}

# Install ffmpeg (Debian/Ubuntu base)
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends ffmpeg \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER node
