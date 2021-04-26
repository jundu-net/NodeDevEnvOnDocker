#!/bin/sh

USER_NAME=${LOCAL_USER:-user}
USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
./
echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
groupadd 
useradd -u $USER_ID -s /bin/bash -o -m $USER_NAME
groupmod -g $GROUP_ID -o $USER_NAME
export HOME=/home/$USER_NAME

supervisord -c /etc/supervisord.conf