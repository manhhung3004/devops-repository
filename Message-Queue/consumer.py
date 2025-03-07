from pykafka import KafkaClient

# Create a Kafka client
client = KafkaClient(hosts='<ip-kafka-1>:29092,<ip-kafka-2>:39092')

# Create a list of topics
topics = ['topic-test1', 'topic-test-2', 'topic-test-3']

consumers = {}
for topic_name in topics:
    topic = client.topics[topic_name]
    consumers[topic_name] = topic.get_simple_consumer(consumer_group='group-1test',
                                                      auto_commit_enable=True,
                                                      auto_commit_interval_ms=1000)

# Consume messages from all topics
for topic_name, consumer in consumers.items():
    for message in consumer:
        if message is not None:
            print(f'Received message from topic {topic_name}: {message.value.decode("utf-8")}')