
# T4
## Describe topic
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G00

## Dry Run: try to reset the commited offsets from all partitions to the beginning (not executed)
## Note: stop all consumers in the group before dry run
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group G00 --reset-offsets --to-earliest --topic second-topic --dry-run

## Execute reset
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group G00 --reset-offsets --to-earliest --topic second-topic --execute

## Describe the group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G00

# T3
## Restart consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic second-topic --group G00


# T4
## Describe the group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group G00
