#!/bin/bash - 
#===============================================================================
#
#          FILE: warnings.sh
# 
#         USAGE: ./warnings.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 10:41:22 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

let "N=0x00"                                    # No Errors

let "N_config_file_missing=0x01"
let "N_arg_conffile_parsed=0x02"
let "N_arg_conffile_unreadable=0x04"
let "N_too_many_args=0x08"
let "N_latest_cleanup_failed=0x10"
let "N_backup_local_nofiles=0x20"

