#!/bin/bash - 
#===============================================================================
#
#          FILE: pass_ssh.sh
# 
#         USAGE: ./pass_ssh.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/25/2013 15:55:34 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

remote_cmd ()
{
    $CONF_ssh_cmd "${CONF_ssh_opts[@]}" -i "${CONF_keyfile}" ${CONF_username}@${CONF_host} <<DATA
set -o pipefail
eval '$@'
DATA
}

CONF_ssh_cmd=$(which ssh)
CONF_ssh_ctrlpath="~/.ssh/tmp/%r@%h:%p"
CONF_keyfile='/Users/pkutzner/.ssh/id_rsa'
CONF_ssh_opts=( '-q' '-oLogLevel=error' '-oUserKnownHostsFile=/dev/null' '-oStrictHostKeyChecking=no' "-oControlPath=${CONF_ssh_ctrlpath}" )
CONF_username='pkutzner'
CONF_host='deepthought.marketingresources.com'
CONF_muname='data-backup'
CONF_mpass='junk1nth3trunk'
CONF_cmds=( '' )
CONF_cmds=( "${CONF_cmds[@]}" "/usr/bin/mysql -u $CONF_muname -p\"$CONF_mpass\" -s -r -e \"SHOW DATABASES;\"" )
CONF_rmtcmd="/usr/bin/mysql -u $CONF_muname -p\"$CONF_mpass\" -s -r -e \"SHOW DATABASES;\""

#echo $CONF_ssh_cmd -oControlMaster=yes "${CONF_ssh_opts[@]}" ${CONF_username}@${CONF_host}
$CONF_ssh_cmd -O check "${CONF_ssh_opts[@]}" -i "${CONF_keyfile}" ${CONF_username}@${CONF_host} || $CONF_ssh_cmd "${CONF_ssh_opts[@]}" -i "${CONF_keyfile}" -MNf ${CONF_username}@${CONF_host}

#for command in "${CONF_cmds[@]}"; do
#    remote_cmd "$command"
#done

databases=( `remote_cmd "$CONF_rmtcmd"` )
echo "Number of databases: ${#databases[@]}"

$CONF_ssh_cmd -O exit "${CONF_ssh_opts[@]}" -i "${CONF_keyfile}" ${CONF_username}@${CONF_host} 2>/dev/null

exit 0
