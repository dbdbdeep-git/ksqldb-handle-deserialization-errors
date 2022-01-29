#!/bin/bash

docker-compose exec ksqldb-cli ksql http://ksqldb-server:8088 \
--execute "PRINT ksql_processing_log FROM BEGINNING LIMIT 1;"

