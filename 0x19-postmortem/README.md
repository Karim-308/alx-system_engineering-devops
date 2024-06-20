# 0x19. Postmortem

## Introduction

Software systems can fail due to various factors such as bugs, traffic spikes, security issues, hardware failures, natural disasters, and human error. While failing is normal, repeating the same failure is not. A postmortem helps understand the cause of an outage and ensures it doesn't happen again.

## Tasks

### 0. My First Postmortem

Using a hypothetical or real incident, write a postmortem addressing the following points:

#### Issue Summary

- **Duration:** June 18, 2024, 3:00 PM - 5:00 PM (GMT)
- **Impact:** 100% downtime; estimated 10,000 users affected.
- **Root cause:** Misconfigured database connection string.

#### Timeline

- **3:00 PM:** Issue detected via monitoring alert.
- **3:05 PM:** On-call engineer begins investigation.
- **3:15 PM:** Identified database connection errors in logs.
- **3:30 PM:** Misleading assumption that the database server was down.
- **3:45 PM:** Escalated to DBA team.
- **4:00 PM:** DBA team confirms database server is operational.
- **4:15 PM:** Discovered misconfiguration in connection string.
- **4:30 PM:** Rolled back to previous deployment.
- **4:45 PM:** Application functionality restored.
- **5:00 PM:** Monitoring confirms normal operations.

#### Root Cause and Resolution

- **Root cause:** Typo in database connection string in the latest deployment.
- **Resolution:** Rolled back deployment, corrected the connection string, and added deployment checks.

#### Corrective and Preventative Measures

- **Improvements:**
  - Implement automated configuration tests.
  - Enhance monitoring for specific failure points.
- **Tasks:**
  - Patch deployment script for validation.
  - Add monitoring for database connection rates.
  - Conduct a review meeting to discuss the incident.
  - Document the deployment process thoroughly.

### 1. Make People Want to Read Your Postmortem

Enhance your postmortem with humor, diagrams, or engaging elements to attract readers.

---

## Repository Information

**Repo:**
- **GitHub repository:** alx-system_engineering-devops
- **Directory:** 0x19-postmortem
- **File:** README.md
