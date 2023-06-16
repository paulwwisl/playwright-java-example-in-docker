FROM mcr.microsoft.com/playwright/java:v1.35.0-jammy-amd64
# Ubuntu 22.04-based image with java 17, mvn 3.8.8
# and chromium-1064  ffmpeg-1009  firefox-1408  webkit-1848
# See https://github.com/microsoft/playwright-java/blob/main/utils/docker/Dockerfile.jammy
# For tags and available platform see
# https://mcr.microsoft.com/en-us/product/playwright/java/tags

WORKDIR /opt

ARG JAR_FILE=target/playwrightexampleapp-1.35.0-jar-with-dependencies.jar
COPY ${JAR_FILE} ./app.jar

ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=true
ENV DEBUG=pw:install

ENTRYPOINT ["java","-jar","./app.jar"]
