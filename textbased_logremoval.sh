#!/usr/bin/bash

find /projects/sanlab/shared/dicom_backup/logs -maxdepth 1 -mtime +7 -type f -print0| \
xargs -0 grep -Z -l 'Dicom Backup Script is already running!' | \
xargs -0 -I {} rm {}

# Removes cronjob logs that contain the above text. Leaves files created within past 5 days.
# For more info about the commands, see https://devimalplanet.com/how-to-move-or-delete-files-containing-text-in-bash-linux
#====end of script
