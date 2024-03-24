# Secure and Monitored Three-Server Web Infrastructure for www.foobar.com

This document outlines the design and specifics of a secure and monitored three-server web infrastructure setup for hosting the website www.foobar.com.

## Components:

### Firewalls:
- **Purpose:** To enforce security policies and protect the servers from unauthorized access and malicious traffic.
- **Why they're added:** Firewalls are essential for securing the infrastructure by controlling incoming and outgoing network traffic based on predetermined security rules.

### SSL Certificate:
- **Purpose:** To enable secure communication between clients and the web servers by encrypting data transmitted over the network.
- **Why it's added:** Serving traffic over HTTPS ensures data confidentiality, integrity, and authentication, protecting sensitive information from eavesdropping and tampering.

### Monitoring Clients:
- **Purpose:** To monitor the health, performance, and security of the infrastructure in real-time.
- **Why they're added:** Monitoring clients collect and send data to monitoring services like Sumo Logic to analyze and visualize metrics, detect anomalies, and alert administrators to potential issues proactively.

## Specifics:

### Firewalls:
- Firewalls are deployed to each server to control inbound and outbound traffic based on predefined security rules.
- They act as a barrier between the server and external networks, preventing unauthorized access and mitigating potential security threats.

### SSL Certificate:
- Traffic is served over HTTPS to encrypt data transmitted between clients and servers, ensuring confidentiality and integrity.
- HTTPS encrypts sensitive information, such as login credentials, payment details, and personal data, protecting it from interception and tampering.

### Monitoring:
- Monitoring is used to track server performance, availability, and security metrics to ensure optimal operation and detect any issues promptly.
- Monitoring tools collect data from servers, applications, and network devices, analyze it in real-time, and generate alerts or reports based on predefined thresholds or conditions.

### Data Collection:
- Monitoring clients collect various metrics, including CPU usage, memory usage, disk space, network traffic, and application performance.
- They send this data to the monitoring service (e.g., Sumo Logic) via agents or APIs, where it is processed, stored, and analyzed to identify trends, anomalies, or potential issues.

### Monitoring Web Server QPS (Queries Per Second):
- To monitor web server QPS, you can configure the monitoring tool to collect and analyze HTTP request metrics, such as request count and response time.
- Set up custom dashboards or alerts to track QPS trends, identify spikes or drops in traffic, and investigate potential performance issues or anomalies.

## Issues with this Infrastructure:

1. **Terminating SSL at the Load Balancer Level:**
   - Terminating SSL at the load balancer exposes decrypted traffic within the internal network, increasing the risk of data exposure and interception.
   - To mitigate this, SSL termination should be performed securely at the application servers to ensure end-to-end encryption.

2. **Single MySQL Server Capable of Accepting Writes:**
   - Having only one MySQL server capable of accepting writes creates a single point of failure (SPOF) for database operations.
   - To address this, implement a MySQL replication setup with a primary-replica (master-slave) configuration to distribute read and write operations across multiple database servers for improved fault tolerance and scalability.

3. **Uniformity of Server Components (Database, Web Server, Application Server):**
   - Having servers with all the same components increases vulnerability to common-mode failures and limits flexibility for scaling or optimizing individual components.
   - To enhance resilience and flexibility, consider diversifying server components, using different technologies, or implementing redundancy for critical services.

By addressing these issues and following best practices for security, encryption, and monitoring, the infrastructure can achieve improved resilience, performance, and security posture.
