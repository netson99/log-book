#!/bin/sh
# start x11vnc server for user: 'user01' with the auth file: $HOME/.Xauthority 
# ( the authority file can be  check by running as root : x11vnc --findauth )
# on Display :0 ; server keep forever ; on Port 5900 and can accept many connection
x11vnc -noxrecord -noxfixes -noxdamage -auth /home/user01/.Xauthority -o /home/user01/x11vnc.log -xkb -display :0 -forever -rfbport 5900 -many &

# start x11vnc for user root  and on lightdm login screen ..
#x11vnc -noxrecord -noxfixes -noxdamage -auth /var/run/lightdm/root/:0 -o /home/op01/x11vnc.log -xkb -display :0 -forever -rfbport 5900 -many &
