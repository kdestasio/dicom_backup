A cronjob is set to run sanlab_dicom_backup.sh, which will backup the directories in /projects/lcni/dcm/sanlab/Berkman to the SAN Lab Dropbox sanlabdicoms at 2:30am each morning.

archive_backup.sh can be submitted manually using sbatch and will backup the directories in /projects/lcni/dcm/sanlab/Archive to SAN Lab Dropbox sanlabdicoms.

/logs is where output from both scripts is stored.

For comprehensive documentation see:
https://uoregonctn.atlassian.net/wiki/spaces/SW/pages/1758265345/DICOM+backup+Talapas+to+Dropbox
