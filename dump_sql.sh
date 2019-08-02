#!/bin/sh
mkdir dump_sql
docker exec -i test_travis_db_1 sh -c 'exec mysqldump demo -uroot -p"$MYSQL_ROOT_PASSWORD"' > dump_sql/demo.sql
