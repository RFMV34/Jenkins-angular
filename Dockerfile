FROM node:latest
RUN apk add chromium
WORKDIR /app

ENV CHROME_BIN=/usr/bin/chromium-browser
