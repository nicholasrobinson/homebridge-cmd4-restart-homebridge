#!/bin/bash

# Script for restarting oznu/docker-homebridge via HomeKit using homebridgeh-cmd-4.
# Usage: bash RestartHomebridge.sh Set HomeBridge On true

if [ "$1" = "Get" ]; then
   # Stateless switch is always off.
   echo "0"
   exit 0
fi

if [ "$1" = "Set" ]; then
   if [ "$3" = "On" ]; then
      if [ "$4" = "true" ]; then
         killall -9 homebridge && killall -9 homebridge-config-ui-x
         exit $?
      else
         # There is no turning off a restart.
         exit 0
      fi
   fi
fi

exit -1

