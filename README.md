# Auto-config for server

### The idea is to be able to setup server fully from a custom script stored on github

1. setup asus as user 
2. install and setup git (if possible)
3. ~install samba, program for handling exfat partitions~
4. ~copy backed-up samba config file~
5. ~copy backed-up fstab file~
6. install timeshift and overwrite config file with backed-up version
7. download + install plex media server
8. Discord Bot:
  * Download discord bot
  * setup bot as service (start on boot)
  * script to download changes to master branch of discord bot

9. ~Write script to copy config files (smb.conf, fstab, timeshift.json) to folder, and push to github repo~
