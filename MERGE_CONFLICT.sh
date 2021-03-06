#!/bin/bash
echo "Vamos a realizar cambios de forma simultánea a este fichero para simular con merge commit"
echo "Intentaremos que dos miembros modifiquen la misma línea para crear la issue, partiendo desde esta versión del archivo"

# What to backup. 
<<<<<<< HEAD
backup_files="/home/ivan /var/spool/mail /etc /root /boot /opt"
=======
backup_files="/home/axel /var/spool/mail /etc /root /boot /opt"
>>>>>>> f3fe41e6eb2626fefe6d2fd608073ad7900597ed

# Where to backup to.
dest="/mnt/backup"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest