from pykafka import KafkaClient
import json
import time
from faker import Faker

faker = Faker()

def get_register():
    return {
        'name': faker.name(),
        'year' : faker.year()
    }
client = KafkaClient(hosts='<ip-kafka-1>:29092,<ip-kafka-2>:39092')

topics = ['topic-test1', 'topic-test-2', 'topic-test-3']

producers = {}
for topic_name in topics:
    topic = client.topics[topic_name]
    producers[topic_name] = topic.get_producer()

while True:
    for topic_name, producer in producers.items():
        data = get_register()
        producer.produce(json.dumps(data).encode('utf-8'))
        print(f"Produced to topic {topic_name}: {data}")
    time.sleep(0.5)