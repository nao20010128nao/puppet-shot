FROM linuxbrew/linuxbrew

USER root
RUN apt-get update
RUN apt-get upgrade -y
# Chromium deps
RUN apt-get install -y \
    ca-certificates fonts-liberation \
    libappindicator3-1 libasound2 \
    libatk-bridge2.0-0 libatk1.0-0 \
    libcairo2 libcups2 \
    libdbus-1-3 libexpat1 \
    libgcc1 libgdk-pixbuf2.0-0 \
    libglib2.0-0 libgtk-3-0 \
    libnspr4 libnss3 \
    libpango-1.0-0 libpangocairo-1.0-0 \
    libstdc++6 libx11-6 \
    libx11-xcb1 libxcb1 \
    libxcomposite1 libxcursor1 \
    libxdamage1 libxext6 \
    libxfixes3 libxi6 \
    libxrandr2 libxrender1 \
    libxss1 libxtst6 \
    lsb-release wget \
    xdg-utils

USER linuxbrew
RUN brew install node git

