#!/bin/sh
docker exec -i test_travis_db_1 sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < dump_sql/demo.sql
