#!/bin/bash - 
#===============================================================================
#
#          FILE: errors.sh
# 
#         USAGE: ./errors.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 10:32:19 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Begin _flags
let "E=0x00"

let "E_dbdump_failed=0x01"
let "E_backup_local_failed=0x02"
let "E_mkdir_basedir_failed=0x04"
let "E_mkdir_subdirs_failed=0x08"
let "E_perm_basedir=0x10"
let "E_enc_cleartext_delfailed=0x20"
let "E_enc_failed=0x40"
let "E_db_empty=0x80"
let "E_create_pipe_failed=0x100"
let "E_missing_deps=0x200"
let "E_no_basedir=0x400"
let "E_config_backupdir_not_writable=0x800"
let "E_dump_status_failed=0x1000"
let "E_dump_fullschema_failed=0x2000"

