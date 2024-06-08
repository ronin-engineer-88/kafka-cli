######## S5 ########
# T1
## Produce with RoundRobinPartitioner
kafka-console-producer.sh --bootstrap-server localhost:9092 --producer-property partitioner.class=org.apache.kafka.clients.producer.RoundRobinPartitioner --topic second-topic

#> m1
#> m2

# T2
## Consume with default commit: earliest
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic --group G00

# T3
## Consume with commit offset: beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic --group G01 --from-beginning

# T4
## List consumer group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

## Describe a group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G00
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G01


# T5
## Add a consumer to a group 
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic --group G00

# T4
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G00

# T1
#> m3
#> m4
#> m5

