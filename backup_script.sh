#!/bin/bash

echo "======================= Backing up your data ============================"

check_arguments () {


        echo "Please provide source and destination as argument"
        echo "Usage : ./backup_script.sh <path of source of data> < path ofbackup destination>"


}

source=$1
backup=$2
date=$( date '+%Y-%m-%d-%H-%M-%S'
)


backup_data () {
        echo "Zipping files "
        zip -r "${backup}/backup_${date}.zip"  "$source" &> /dev/null



}

delete_older_file () {
         array=($(ls -t "${backup}/backup_"*.zip )) ## double paranthethis means it is an array
        if [ ${#array[@]} -gt 5 ] ; then ## Here # in if command means length of array and @ means total no of element in ary
                echo " Performing rotation for 5 days :  "
                backup_to_delete=("${array[@]:5}") ## :5 means all the element afte index no 5
                for backup in ${backup_to_delete[@]}
                do
			
                        rm -f ${backup}
                        echo " "
                        echo " "
               done
               echo " ========================== done ========================"
        fi

}


if [ $# -eq 0 ]; then
        check_arguments
        exit 1
fi

backup_data
delete_older_file


