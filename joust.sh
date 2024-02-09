#!/bin/bash

if [ $UID -ne 0 ]; then
  echo "Not root. Using sudo."
  exec sudo $0
fi

#sets the username of the system, supervisord does not have a login
#so we need to use the who command. 
HOMENAME="malcolm"

export HOME="/root"
export PYTHONPATH="/home/$HOMENAME/psmoveapi/build/"
exec /home/$HOMENAME/JoustMania/venv/bin/python3 /home/$HOMENAME/JoustMania/piparty.py
