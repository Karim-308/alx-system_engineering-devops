# Distributed Web Infrastructure Design for www.foobar.com

This document outlines the design and specifics of a three-server web infrastructure setup for hosting the website www.foobar.com.

## Components:

### Load Balancer (HAProxy):
- **Purpose:** To distribute incoming web traffic across multiple servers for load balancing and high availability.
- **Distribution Algorithm:** Configured with a Round Robin algorithm to evenly distribute requests among the available servers.
- **Active-Active Setup:** Both web servers actively handle requests simultaneously, providing redundancy and improved performance.

### Web Servers (Nginx):
- **Purpose:** To serve web pages and handle incoming HTTP requests from clients.

### Application Server:
- **Purpose:** To host the application codebase, process dynamic content generation requests, and execute application logic.

### Database (MySQL):
- **Purpose:** To store and manage structured data used by the application, such as user information, content, and settings.

## Load Balancer Configuration:

The load balancer (HAProxy) is configured with a Round Robin distribution algorithm. This algorithm evenly distributes incoming requests among the available web servers, ensuring balanced load distribution and optimal performance.

## Active-Active vs. Active-Passive Setup:

- **Active-Active Setup:** Both web servers actively handle incoming requests simultaneously. In this setup, there is no standby or passive server, and all servers contribute to serving traffic.
- **Active-Passive Setup:** One web server (or a subset) serves as the active node, handling incoming requests, while the passive server(s) remain idle until needed. In case of failure or maintenance, the passive server(s) take over to maintain service availability.

## Database Primary-Replica (Master-Slave) Cluster:

- **How it Works:** In a Primary-Replica cluster, the Primary node (Master) handles both read and write operations, while the Replica node(s) (Slave) replicate data from the Primary node for read-only operations. Any changes made to the Primary node are asynchronously replicated to the Replica node(s).
- **Difference in Application:** The application interacts primarily with the Primary node for read and write operations. The Replica node(s) serve as backups and can handle read-only queries, providing scalability and fault tolerance.

## Issues with this Infrastructure:

1. **Single Points of Failure (SPOF):**
   - The load balancer may become a single point of failure if it experiences downtime or malfunctions.
   - Lack of redundancy in the load balancer and web servers increases the risk of downtime.

2. **Security Issues:**
   - No firewall implementation leaves the infrastructure vulnerable to unauthorized access and potential cyber attacks.
   - Lack of HTTPS encryption exposes sensitive data to interception and compromise.

3. **No Monitoring:**
   - Without monitoring tools or processes in place, it's challenging to identify and address performance issues, security threats, or infrastructure failures proactively.

To mitigate these issues, consider implementing redundant load balancers, firewall configurations, HTTPS encryption, and monitoring solutions for proactive infrastructure management and security.
