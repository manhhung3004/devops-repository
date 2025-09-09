# DevOps Learning Repository

Welcome to the DevOps Learning Repository! This project is dedicated to helping you learn and practice essential DevOps technologies through hands-on examples and practical setups.

## Tools Included

This repository covers the following tools:

- **Jenkins**: Automate building, deploying, and managing software projects.
- **Elasticsearch**: Distributed search and analytics engine for log data.
- **Logstash**: Pipeline for ingesting, transforming, and forwarding logs.
- **Kibana**: Visualize and explore data stored in Elasticsearch.
- **Prometheus**: Collect and monitor metrics from your infrastructure.
- **Grafana**: Create dashboards and visualize metrics from multiple sources.
- **Airflow**: Automate and schedule data pipelines and workflows.
- **Harbor**: Secure registry for storing and managing container images.
- **Nginx**: High-performance web server and reverse proxy.
- **Rancher**: Manage and deploy Kubernetes clusters.
- **Vault**: Securely manage secrets and sensitive data.

## Getting Started

To launch the main services, use Docker Compose:

```sh
docker-compose up -d
```

You can customize ports, environment variables, and service settings by editing the `docker-compose.yml` file.

## Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/manhhung3004/DevOps-Blog.git
   cd DevOps-Blog
   ```
2. Start the services:
   ```sh
   docker-compose up -d
   ```
3. Adjust configurations as needed in `docker-compose.yml`.

## License

This project is licensed under the MIT License.

