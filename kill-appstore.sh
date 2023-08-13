#!/bin/bash

# Terminate the process using killall
killall -q io.elementary.appcenter

if [ $? -eq 0 ]; then
    echo "io.elementary.appcenter was running and has been terminated."
else
    echo "io.elementary.appcenter was not running."
fi

