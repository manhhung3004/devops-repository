# Docker Compose for ELK Stack (Elasticsearch, Kibana, Logstash, Metricbeat, Filebeat)

This repository provides a Docker Compose configuration to set up an ELK stack environment with added Metricbeat and Filebeat services for enhanced logging and monitoring. This setup enables secure communication between services using SSL certificates.

---

## Prerequisites

- **Docker**: Install Docker on your system ([instructions here](https://docs.docker.com/get-docker/)).
- **Docker Compose**: Ensure you have Docker Compose installed ([instructions here](https://docs.docker.com/compose/install/)).
- **.env file**: Create a `.env` file in the root directory with the required variables.

- **permission**: chmod go-w filebeat.yml metricbeat.yml
### Example `.env` File

```plaintext
STACK_VERSION=8.9.0   # Elastic Stack version
ELASTIC_PASSWORD=changeme
KIBANA_PASSWORD=changeme
KIBANA_PORT=5601
ENCRYPTION_KEY=some-random-encryption-key
LICENSE=basic
ES_MEM_LIMIT=2g
KB_MEM_LIMIT=1g
LS_MEM_LIMIT=512m

