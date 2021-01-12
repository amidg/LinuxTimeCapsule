# LinuxTimeCapsule
Mount Apple Time Capsule (or any other SMB storage) into Linux File Manager with one line in terminal. In order to adjust the script data do the following:

Step #1: "Create a mounting point"
Create a mounting point for your Apple Time Capsule using the following command:
mkdir /media/username/timecapsule

Replace "username" with your Linux computer username. 


Step #2: "Modify your Apple Time Capsule IP credentials"
Enter your timecapsule IP address and Disk Name. Unless, you are a networking geek and just use your default router settings, your IP will be 192.168.0.xxx. Check your router IP of 192.168.0.1 to find your SMB IP address. Then enter your Time Capsule's disk name as shown below. Name must be same one as in Apple's AirPort Disk Utility. 
//192.168.0.101/DISK

Step #3: "Add your capsule's credentials"
Default ones are:
username=admin
pass=public
uid= "enter your linux user name", e.g. uid=amidg

Step #4: "Compare your resulting command with the following"

echo "sudo mount -t cifs //ip.ip.ip.ip/DISK /media/username/timecapsule -o username=admin,pass=public,sec=ntlm,uid=user,vers=1.0" | /bin/bash 


Step #5: "Executing"
After you are done editing your script file, execute the following command to make it executable:
chmod 755 ./mountcapsule.sh

In order to execute file you need to "cd" to the folder where file is placed and do the following:
sudo sh ./mountcapsule.sh

KDE users (e.g. KDE Neon or Manjaro) will get the automatic notification.  
