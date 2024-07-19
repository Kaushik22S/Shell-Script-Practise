#!/bin/bash

source_dir=$1

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

backup_dir="${source_dir}/backup_${timestamp}"

zip -r "${backup_dir}.zip" "${source_dir}"

if [$? eq 0]; then
	echo "Backup successfully created"
else
	echo "Backup not created on $timestamp"
fi
