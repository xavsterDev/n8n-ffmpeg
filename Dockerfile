# Dockerfile

ARG BASE_TAG=2.8.3

# Stage 1: get static ffmpeg binaries
FROM mwader/static-ffmpeg:6.0 AS ffmpeg

# Stage 2: your n8n base image (minimal/distroless-friendly)
FROM docker.n8n.io/n8nio/n8n:${BASE_TAG}

# Copy ffmpeg + ffprobe into the final image (no package manager needed)
COPY --from=ffmpeg /ffmpeg  /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe

USER node
