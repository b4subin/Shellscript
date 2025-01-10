#!/bin/bash
#This line indicates that the script should be run using the Bash shell.
log_file="/workspaces/Python/sam.log"
max_size=10000 #1MB
if [ $(wc -c < "$log_file") -gt $max_size ]; then
    mv "$log_file" "$log_file.old" ---- Rotate Log File
    touch $log_file
fi                                                    #wc -c < "$log_file": This command uses wc (word count) with the -c option to count the number of bytes in the log file.
                                                      #$(...): This syntax captures the output of the wc command.
                                                      #-gt $max_size: This checks if the size of the log file is greater than max_size.
  
