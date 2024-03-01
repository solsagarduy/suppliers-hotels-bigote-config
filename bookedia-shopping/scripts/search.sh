#!/bin/bash

# Variables y funciones disponibles
#   $middleware_command -> Commando de ejecución del middleware

echo "gor \
--input-raw=':9290' \
--input-raw-track-response \
--output-http-track-response \
--output-http-response-buffer 10000000 \
--output-http 'http://bkd-shopping-beta-01:9290|10' \
--output-http-timeout 30s \
--middleware '$middleware_command' \
--http-allow-url '/bookedia/shopping/availability' \
--http-allow-method GET \
--http-disallow-url '/bookedia/shopping/health-check' \
--exit-after 30m
"
