#!/bin/bash

docker-compose exec ksqldb-cli ksql-test-runner \
		-i /opt/app/test/input.json \
		-s /opt/app/sql/statements.sql \
		-o /opt/app/test/output.json
