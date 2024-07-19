#!/bin/bash

source_dir=$1
target_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

backup_dir="${target_dir}/backup_${timestamp}"

zip -r "${backup_dir}.zip" "${source_dir}"

if [ $? -eq 0 ]; then
    echo "Backup successfully created"
else
    echo "Backup not created on $timestamp"

fi
function perform_rotational() {
	backups=($(ls -t "$target_dir/backup_"*.zip | head -5)) # backups is an array
   #echo "${backups[@]}" # @ is used to store the value in array
   echo "${backups[@]}"
   for backup in "${backups[@]}"; do
	   echo "$backup"
   done
   if [ "${#backups[@]}" -gt 3 ]; then
	   backup_to_remove=("${backups[@]:3}")
	   for backup in "${backup_to_remove[@]}";
	   do
		rm "$backup"
	   done
   fi
 #  echo "----------------------------"
 #  echo "${backup_to_remove[@]}"
}

perform_rotational

