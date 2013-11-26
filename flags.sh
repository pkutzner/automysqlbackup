#!/bin/bash - 
#===============================================================================
#
#          FILE: flags.sh
# 
#         USAGE: ./flags.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 10:43:05 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

let "filename_flag_encrypted=0x01"
let "filename_flag_gz=0x02"
let "filename_flag_bz2=0x03"
let "filename_flag_diff=0x08"

