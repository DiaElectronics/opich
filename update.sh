#!/bin/bash

LOGS="$(git pull|grep firmware.exe)"
echo "LOGS: [""$LOGS""]"
[ -z "$LOGS" ] || (echo "rebooting" && sleep 30 && sudo reboot)
