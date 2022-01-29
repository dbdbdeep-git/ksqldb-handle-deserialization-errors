#!/bin/bash

docker-compose exec -T broker kafka-console-producer --bootstrap-server localhost:9092 --topic SENSORS_RAW < data.json
