#!/bin/bash
/usr/sbin/httpd -k stop
yum clean all
yum -y update
RESTART=$(needs-restarting -r)
if [ $RESTART -ne 0 ]
then
	reboot
fi
