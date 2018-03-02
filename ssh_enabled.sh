#!/bin/bash

###############################################################################
# Check SSH Keyboard Authentication Extention Attribute
# 
# Isaac Ordonez, Mann Consulting R1
# Summary: Checks to see if SSH password auth is enabled on the local host
###############################################################################

status=$((ssh -o BatchMode=yes -o StrictHostKeyChecking=no -o ConnectTimeout=10 user@localhost ) 2>&1)

if echo "$status" | grep -e "keyboard" > /dev/null; then
echo "<result>yes</result>"
else
echo "<result>no</result>"
fi
