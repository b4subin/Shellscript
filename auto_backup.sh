#!/bin/bash
#This line indicates that the script should be run using the Bash shell.
backup_dir="/workspaces/Python/back"
source_dir="/workspaces/Python"
timestamp=$(date +"%Y%m%d%H%M%S")
#This command generates a timestamp in the format YYYYMMDDHHMMSS using the date command. This ensures that each backup file has a unique name based on the exact time it was created.
tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"
#tar is a command used to create archive files.
#-czf options:
#-c: Create a new archive.
#-z: Compress the archive using gzip.
#-f: Specify the filename of the archive.
#This command creates a compressed tarball of the source_dir and saves it in the backup_dir with a filename that includes the timestamp
