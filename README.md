# docker-fsarchiver
Docker container for '**fsarchiver**' CLI tool for backing up and/or restoring *.fsa files. Created for unRAID, but can be run without it.

Passthrough physical/loop devices with the 'device' type. Mount loop devices with 'losetup /dev/loopXX /mnt/user/loopFile.img' in the host. Add a Path (Volume) that contains or will contain the fsarchiver *.fsa backup files. 'nano' and 'screen' tools are included. 

Privileges required for accessing the host devices. Container will run indefinately (doing nothing) in the background. You need to access the Console and for ex. run the below example commands.

**Example commands in the Console:**
Backup 2 partitions:
```screen fsarchiver savefs /data/backup.fsa /dev/nvme1n1p1 /dev/nvme1n1p2```
Show archive information
```fsarchiver archinfo /data/backup.fsa```
Restore 2 partitions to specific locations**
```screen fsarchiver restfs /data/backup.fsa id=0,dest=/dev/nvme1n1p1 id=1,dest=/dev/nvme1n1p2```


**Add this as a private app to unRAID** (optional)
mkdir -p /boot/config/plugins/community.applications/private/fsarchiver/
cp fsarchiver.xml /boot/config/plugins/community.applications/private/fsarchiver/
