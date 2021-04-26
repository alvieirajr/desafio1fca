#!/bin/sh
# wait 
>&2 echo "Wait until MySQL is really available ..."
counter=1
while ! mysql --protocol TCP -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "show databases;" > /dev/null 2>&1; do
    sleep 1
done

>&2 echo "MySQL are up! Runnig server ..."

#go
node index.js