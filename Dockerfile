FROM node:latest
RUN apt-get install chromium
WORKDIR /app

ENV CHROME_BIN=/usr/bin/chromium-browser
