######## S1 ########
# T1: produce messages
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first-topic
#> Hello Kafka
#> I am a Ronin Engineer
#> Helping people

# T2: consume the first topic
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first-topic



######## S2 ########
# T1: produce messages to the second topic with 3 partitions
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic second-topic \ 
--producer-property acks=all
#> a durable message

# T2: comsume the second topic
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic



######## S3 ########
# T1: produce to non-existing topic
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic new-topic
#> new

kafka-topics.sh --bootstrap-server localhost:9092 --list
kafka-topics.sh --bootstrap-server localhost:9092 --topic new-topic --describe



######## S4 ########
# T1: Produce messages with keys
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic second-topic \ 
--property parse.key=true --property key.separator=:
#> key1:message1
#> user34:{"order_id": "o88", "product_id": "p67", "quantity": 3}

# T2: consume
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic \ 
--from-beginning

kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic \ 
--formatter kafka.tools.DefaultMessageFormatter \
--property print.timestamp=true \ 
--property print.key=true \ 
--property print.value=true 
--property print.partition=true \
--from-beginning

