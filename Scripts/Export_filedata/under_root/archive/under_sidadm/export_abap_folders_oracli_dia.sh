#!/bin/bash
#
#script for app servers
SID=$SAPSYSTEMNAME

# export sap folders from CI ( !! without logs and global !!)
TARTARGET="$SID/${SID}_$(hostname)_sap_folders_oracli_DIA.tar"
tar cvf - /oracle/client/12x /usr/sap/ccms /usr/sap/DA* /usr/sap/$SID/SYS /usr/sap/hostctrl /etc/rc.d/init.d/sapinit /usr/sap/scripts /usr/sap/sapservices /usr/sap/tmp/grmg | ssh scp@192.168.63.82 "cat > /share/pub/basis/Systems_export/$TARTARGET"