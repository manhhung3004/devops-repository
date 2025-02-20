# DevOps Learning Repository

This repository is designed for learning and practicing DevOps technologies, including:

- **Jenkins Shared Library**: Creating and using shared libraries for Jenkins pipelines.
- **Logging with ELK**: Collecting and analyzing logs using Elasticsearch, Logstash, and Kibana.
- **Monitoring with Prometheus & Grafana**: System monitoring with Prometheus and data visualization with Grafana.

## 1. Jenkins Shared Library
Jenkins Shared Library enables the reuse of pipeline scripts across multiple projects. This repository includes examples of:
- Directory structure of a Shared Library.
- Writing reusable Groovy functions.
- Importing and using a Shared Library in Jenkinsfile.

**Reference:** [Jenkins Shared Library Documentation](https://www.jenkins.io/doc/book/pipeline/shared-libraries/)

## 2. Logging with ELK
The ELK stack (Elasticsearch, Logstash, Kibana) is used for collecting, storing, and analyzing logs.

### ELK Stack Configuration:
- **Elasticsearch**: Stores and searches logs.
- **Logstash**: Collects, processes, and sends logs to Elasticsearch.
- **Kibana**: Provides visualization and log analysis.

**Reference:** [ELK Stack Documentation](https://www.elastic.co/what-is/elk-stack)

## 3. Monitoring with Prometheus & Grafana
Prometheus and Grafana are widely used monitoring tools in DevOps.

### Key Components:
- **Prometheus**: Collects and stores metrics from various systems.
- **Grafana**: Visualizes metrics in dashboards.

### Deployment Steps:
1. Install Prometheus and Grafana.
2. Configure Prometheus to collect data from applications.
3. Create dashboards in Grafana to visualize Prometheus metrics.

**Reference:** [Prometheus Documentation](https://prometheus.io/docs/) | [Grafana Documentation](https://grafana.com/docs/)

## Usage
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo-name.git
   cd your-repo-name
   ```
2. Follow the instructions in each directory to set up the Jenkins Shared Library, ELK Stack, or Prometheus & Grafana.

## Contribution
If you would like to contribute to this repository, please create a Pull Request or open an Issue for discussion.

## License
MIT License

