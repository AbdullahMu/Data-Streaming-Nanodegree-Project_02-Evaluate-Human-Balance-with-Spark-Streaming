# This is how you start the component needed to run the Redis Source Topic ****if it fails it is usually because something is still running
export CLASSPATH=/data/kafka/share/java/kafka-connect-redis/*
/data/kafka/bin/connect-standalone /home/workspace/kafka/connect-avro-standalone.properties /data/kafka/etc/schema-registry/redis.properties &
