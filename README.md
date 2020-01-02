# Motivation

Allows oznu/docker-homebridge to be rebooted via HomeKit.

# Example config.json
```
...
    {
        "platform": "Cmd4",
        "name": "Cmd4",
        "accessories": [
            {
                "type": "Switch",
                "displayName": "Restart Homebridge",
                "on": "FALSE",
                "name": "RestartHomebridge",
                "state_cmd": "/root/.homebridge/Cmd4Scripts/RestartHomebridge.sh",
                "polling": true,
                "interval": 5,
                "timeout": 4000
                }
        ]
   }
...
```