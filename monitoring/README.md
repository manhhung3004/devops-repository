# Monitoring with Grafana, Prometheus, and Node Exporter

## Overview
This repository provides a monitoring stack using **Grafana**, **Prometheus**, and **Node Exporter** to collect and visualize system metrics from a Virtual Machine (VM).

## Components
- **Prometheus**: Collects metrics from Node Exporter.
- **Node Exporter**: Exposes system metrics of the VM.
- **Grafana**: Provides dashboards and visualizations for collected metrics.

## Architecture
```
+----------------+       +----------------+       +----------------+
|  Node Exporter | <---> |  Prometheus    | <---> |  Grafana       |
+----------------+       +----------------+       +----------------+
```

## Prerequisites
Ensure you have the following installed on your system:
- Docker & Docker Compose
- A VM with Linux-based OS

## Installation
### 1. Clone the repository
```bash
git https://github.com/manhhung3004/DevOps-Blog.git
cd monitoring
```

### 2. Start the monitoring stack
```bash
docker-compose up -d
```

### 3. Configure Prometheus
The `prometheus.yml` file is configured to scrape metrics from Node Exporter:
```yaml
scrape_configs:
  - job_name: 'node_exporter'
    static_configs:
      - targets: ['node_exporter:9100']
```

### 4. Access the services
- **Prometheus**: `http://localhost:9090`
- **Grafana**: `http://localhost:3000` (Default login: `admin/admin`)
- **Node Exporter**: `http://localhost:9100/metrics`

## Grafana Dashboard
You can import a predefined Grafana dashboard for system monitoring using the official **Node Exporter Dashboard ID: 1860**.

## Stopping the stack
To stop the monitoring stack, run:
```bash
docker-compose down
```

## Troubleshooting
- Ensure that all services are running using:
```bash
docker ps
```
- Check Prometheus targets: `http://localhost:9090/targets`
- Check logs for debugging:
```bash
docker-compose logs -f
```

## License
This project is open-source under the MIT License.

## Author
ManhHung3004 - [GitHub Profile](https://github.com/manhhung3004)

