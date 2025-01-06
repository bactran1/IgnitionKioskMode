#! /bin/bash

export DISPLAY=:0

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/cse/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/cse/.config/chromium/Default/Preferences

#Wait for the Ignition Gateway to finish booting up
sleep 20s
/usr/bin/chromium-browser --kiosk http://bac-codesysignition.baclocal.baclocal:8088/data/perspective/client/BacHomeSystem &
