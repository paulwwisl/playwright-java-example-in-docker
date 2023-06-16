#!/bin/bash

mvn clean package && docker build . --file Dockerfile-arm -t playwright-example-app-arm --platform=linux/arm64

