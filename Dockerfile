FROM node:latest
RUN apt-get update && apt-get install -y chromium
WORKDIR /app

ENV CHROME_BIN=/usr/bin/chromium-browser
