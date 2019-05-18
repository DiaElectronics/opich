#!/bin/bash

LOGS="$(git pull|grep firmware.exe)"
echo "LOGS: [""$LOGS""]"
[ -z "$LOGS" ] || sudo reboot
