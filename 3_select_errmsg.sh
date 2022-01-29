#!/bin/bash

docker-compose exec ksqldb-cli ksql http://ksqldb-server:8088 \
--execute "
SELECT
  message->deserializationError->errorMessage,
  encode(message->deserializationError->RECORDB64, 'base64', 'utf8') AS MSG,
  message->deserializationError->cause
FROM KSQL_PROCESSING_LOG
EMIT CHANGES
LIMIT 1;"
