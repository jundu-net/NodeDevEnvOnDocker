#!/bin/sh
LOCAL_USER=$USER \
  LOCAL_UID=$(id -u $USER) \
  LOCAL_GID=$(id -g $USER) \
  docker-compose up -d