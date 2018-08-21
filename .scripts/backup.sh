mount -t cifs //192.168.63.12/home/Backups/BackupLinux/PC-alex /mnt/NAS/Backup/ -o credentials=/home/alex/.smbcredentials

echo "Creating directory $(date +%Y-%m) if it doesnt already exist"
mkdir -p /mnt/NAS/Backup/$(date +%Y-%m)

printf "###########################\n\
#Backing up home directory#\n\
###########################\n"
rsync -avzhp --delete \
--exclude-from=/var/tmp/backup_ignorelist \
/home/alex/ \
/mnt/NAS/Backup/$(date +%Y-%m) 
printf "###########################\n\
#Backed up home directory#\n\
###########################\n"

printf "###########################\n\
#Backing up DATA partition#\n\
###########################\n"
rsync -avzhp --delete \
--exclude-from=/var/tmp/backup_ignorelist \
/mnt/DATA/ \
/mnt/NAS/Backup/$(date +%Y-%m)
printf "###########################\n\
#Backed up home directory#\n\
###########################\n"

printf "###########################\n\
#Removing old backups#\n\
###########################\n"
rm -rf /mnt/NAS/Backup/$(date +%Y-%m -d "3 months ago")
printf "###########################\n\
#Removed old backups#\n\
###########################\n"

umount -l /mnt/NAS/Backup
echo "All done"
