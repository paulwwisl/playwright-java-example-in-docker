#!/bin/bash

mvn clean package && docker build . -t playwright-example-app --platform=linux/amd64

