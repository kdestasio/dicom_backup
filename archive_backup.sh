#!/usr/bin/bash
#SBATCH --mail-user=kdestasi@uoregon.edu				# Where to send mail
#SBATCH --mail-type=end,fail                                            # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --partition=ctn                                                 # Partition
#SBATCH --job-name="archive_backup"                                     # Job name
#SBATCH --output=/projects/sanlab/shared/dicom_backup/logs/%x_%j.log    # Output and error log
#SBATCH --account=sanlab						# Charge resources to this account

srun -l -v /packages/rclone/1.38/bin/rclone copy --tpslimit 12 --tpslimit-burst 12 --exclude-from /projects/sanlab/shared/dicom_backup/exclusion_list.txt /projects/lcni/dcm/sanlab/Archive/ sanlabdropbox:"Krista DeStasio’s files"/shared/sanlabdicoms/
