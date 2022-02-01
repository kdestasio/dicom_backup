#!/usr/bin/bash

#LOCK=sanlab_lock

#if [ -f $LOCK ]; then
#echo Dicom Backup Script is already running\!
#exit 6
#fi

#touch $LOCK

sanlab_paths=(/projects/lcni/dcm/sanlab/Berkman)

for dir_path in ${sanlab_paths[@]}; do
    /packages/rclone/1.38/bin/rclone copy --tpslimit 12 --tpslimit-burst 12 $dir_path sanlabdropbox:"Krista DeStasio’s files"/shared/sanlabdicoms/
    echo $dir_path
done

#rm $LOCK

#====end of script
