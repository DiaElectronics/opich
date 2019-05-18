#!/bin/bash

LOGS="$(git pull|grep Updating)"
echo "LOGS: [""$LOGS""]"
[ -z "$LOGS" ] || sleep 120 && sudo reboot
