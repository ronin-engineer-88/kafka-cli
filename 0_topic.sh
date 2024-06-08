# Login kafka1 container
docker exec -it kafka1 /bin/bash

# Create the first topic
## topic name should contain - instead of _
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic first-topic --partitions 3

# List topics
kafka-topics.sh --bootstrap-server localhost:9092 --list

# Create the second topic
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic second-topic --partitions 3 --replication-factor 3
kafka-topics.sh --bootstrap-server localhost:9092 --create --topic third-topic --partitions 5 --replication-factor 2

# List topics
kafka-topics.sh --bootstrap-server localhost:9092 --list

# Describe topics
kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic first-topic
kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic second-topic 

# Delete topics
kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic third-topic

