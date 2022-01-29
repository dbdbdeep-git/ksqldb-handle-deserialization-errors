#!/bin/bash

docker-compose exec ksqldb-cli ksql http://ksqldb-server:8088 \
--execute "SET 'auto.offset.reset' = 'earliest';

SELECT
    ID,
    TIMESTAMP,
    ENABLED
FROM SENSORS EMIT CHANGES LIMIT 2;"

