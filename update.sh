#!/bin/bash

LOGS="$(git pull|grep Updating)"
echo "LOGS: [""$LOGS""]"
[ -z "$LOGS" ] || reboot
