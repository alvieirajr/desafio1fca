#!/bin/sh
# wait until MySQL is really available
maxcounter=45
  >&2 echo "Wait until MySQL is really available ..."
counter=1
while ! mysql --protocol TCP -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "show databases;" > /dev/null 2>&1; do
    sleep 1
    counter=`expr $counter + 1`
    if [ $counter -gt $maxcounter ]; then
        >&2 echo "We have been waiting for MySQL too long already; failing."
        exit 1
    fi;
done

#wait
#until echo '\q' | mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DATABASE; do
#    >&2 echo "Wait for MySQL Container!!!"
#    sleep 5
#done

>&2 echo "MySQL are up! Runnig server ..."

#go
node index.js