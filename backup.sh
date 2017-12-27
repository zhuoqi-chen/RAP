#!/bin/bash

set -e
NAME="rap-$(date '+%Y%m%d-%H%M%S').tar.gz"
tar -zcvf $NAME --exclude=.git ./mysql_data
/usr/local/bin/qrsctl put data-backup $NAME $NAME
rm -f $NAME
/bin/date >>/tmp/date.txt
echo $NAME