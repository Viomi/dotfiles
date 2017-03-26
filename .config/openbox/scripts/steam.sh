#This script is a generally used Openbox pipe menu to list all currently installed steam games as well as launch them.

#To install:
#Put this script in ~./config/openbox/scripts/steam.sh (or elsewhere if you want to edit the below <menu>)
#Add the below line to menu.xml (without the comment of course)
#<menu execute="~/.config/openbox/scripts/steam.sh" id="steam" label="Steam"/>

#!/bin/bash

STEAMAPPS=~/.local/share/Steam/steamapps

echo '<openbox_pipe_menu>'
echo '<item label="Launch Steam"><action name="Execute"><execute>steam</execute></action></item>'
echo '<separator/>'
for file in $(ls $STEAMAPPS/*.acf -1v); do
   ID=$(cat "$file" | grep '"appid"' | head -1 | sed -r 's/[^"]*"appid"[^"]*"([^"]*)"/\1/')
   NAME=$(cat "$file" | grep '"name"' | head -1 | sed -r 's/[^"]*"name"[^"]*"([^"]*)"/\1/')
   echo "<item label=\"$NAME\"><action name=\"Execute\"><execute>steam -applaunch $ID</execute></action></item>"
done
echo '</openbox_pipe_menu>'