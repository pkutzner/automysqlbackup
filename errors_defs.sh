#!/bin/bash - 
#===============================================================================
#
#          FILE: errors_defs.sh
# 
#         USAGE: ./errors_defs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 10:45:36 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

errors=(
    [0x01]='dbdump() failed.'
    [0x02]='Backup of local files failed. This is not this scripts primary objective. Continuing anyway.'
    [0x04]="Could not create the backup_dir ${CONFIG_backup_dir}. Please check the permissions of the higher directory."
    [0x08]='At least one of the subdirectories (daily, weekly,monthly, latest) failed to create.'
    [0x10]="The backup_dir ${CONFIG_backup_dir} is not writable AND/OR executable."
    [0x20]='Could not remove the cleartext file after encryption. This error did not cause an abort. Remove it manually and check permissions.'
    [0x40]='Encryption failed. Continuing without encryption.'
    [0x80]='The mysql server is empty. i.e. no databases found. Check if something is wrong. Exiting.'
    [0x100]='Failed to create the named pipe (fifo) for reading in all databases. Exiting.'
    [0x200]='Dependency programs are missing. Perhaps they are not in $PATH. Exiting.'
    [0x400]='No basedir found.'
    [0x800]="${CONFIG_backup_dir} is not writable. Exiting."
    [0x1000]='Running of mysqlstatus failed.'
    [0x2000]='Running of mysqldump full schema failed.'
)

