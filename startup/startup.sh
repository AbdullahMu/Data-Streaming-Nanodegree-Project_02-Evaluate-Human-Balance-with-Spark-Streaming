#!/bin/bash
/data/redis/redis-stable/src/redis-server /data/redis/redis-stable/redis.conf > /home/workspace/redis/redis-startup.log 2>&1 &
# an updated /data/stedi-application/StepTimerWebsocket-1.0-SNAPSHOT.jar file below needs to be provided by Sean Murdock
/home/workspace/kafka/start_kafka_rest.sh 2>&1 &
/home/workspace/kafka/start_kafka_connect.sh 2>&1 &
java -Dconfig=/home/workspace/stedi-application/application.conf -jar /data/stedi-application/StepTimerWebsocket-1.0-SNAPSHOT.jar > /home/workspace/stedi-application/stedi.log 2>&1 &

