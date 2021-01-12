#!/bin/bash
#
echo "sudo mount -t cifs //192.168.0.xxx/DISK /media/username/timecapsule -o username=admin,pass=public,sec=ntlm,uid=username,vers=1.0" | /bin/bash 

#kde users only:
kdialog --title "Apple Time Capsule" --passivepopup "Network Storage mounted" 5

