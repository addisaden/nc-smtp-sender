#!/bin/sh
echo -n "smtp-server: "
read SMTPSERVER
echo -n "emailfile: "
read EMAILFILE
echo -n "email: "
read EMAILADDRESS
echo "Please typein your password, when it holds."
sh smtp_login.sh $SMTPSERVER $EMAILADDRESS $EMAILFILE | nc $SMTPSERVER 25
