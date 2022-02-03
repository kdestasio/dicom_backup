#!/usr/bin/bash

sanlab_paths=(/projects/lcni/dcm/sanlab/Berkman)

for dir_path in ${sanlab_paths[@]}; do
    /packages/rclone/1.38/bin/rclone copy --tpslimit 12 --tpslimit-burst 12 --exclude-from /projects/sanlab/shared/dicom_backup/exclusion_list.txt $dir_path sanlabdropbox:"Krista DeStasio’s files"/shared/sanlabdicoms/
    echo $dir_path
done

#====end of script
