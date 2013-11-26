#!/bin/bash - 
#===============================================================================
#
#          FILE: notices_defs.sh
# 
#         USAGE: ./notices_defs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 10:55:16 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

notify=(
    [0x01]="${CONFIG_configfile} was not found - no global config file."
    [0x02]="Parsed config file ${opt_config_file}."
    [0x04]="Unreadable config file \"${opt_config_file}\""
    [0x08]='Supplied more than one argument, ignoring ALL arguments - using default and global config file only.'
    [0x10]='Could not remove the files in the "latest" directory. Please check this.'
    [0x20]='No local backup files were set.'
    [0x40]=''
    [0x80]=''
    [0x100]=''
    [0x200]=''
    [0x400]=''
    [0x800]=''
    [0x1000]=''
    [0x2000]=''
)

