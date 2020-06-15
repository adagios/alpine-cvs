#!/bin/sh

adduser -D -H $CVS_USER

cvs -d /var/cvsroot init
echo $CVS_USER':'$(openssl passwd -crypt $CVS_PASSWD) > /var/cvsroot/CVSROOT/passwd

chown -R $CVS_USER /var/cvsroot

inetd -fe
