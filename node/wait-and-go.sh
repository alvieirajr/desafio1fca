
#wait
until echo '\q' | mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" $MYSQL_DATABASE; do
    >&2 echo "Wait for MySQL Container!!!"
    sleep 5
done

>&2 echo "MySQL are up! Runnig server ..."

#go
node index.js