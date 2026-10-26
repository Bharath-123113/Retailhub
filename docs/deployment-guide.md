# RetailHub Deployment Guide

## Prerequisites

Before deploying the RetailHub application, make sure the following are available:

- Git
- Linux / CentOS
- Bash

## Deployment Steps

### 1. Clone the Repository

Clone the RetailHub repository from GitHub:

```bash
git clone https://github.com/Bharath-123113/Retailhub.git
```

### 2. Enter the Repository

Navigate to the RetailHub project directory:

```bash
cd Retailhub
```

### 3. Review Application Configuration

Check the application configuration files before starting the deployment.

The configuration files are located in the `configs/` directory.

### 4. Execute the Deployment Script

Run the deployment script:

```bash
./scripts/deploy.sh
```

If required, make the script executable first:

```bash
chmod +x scripts/deploy.sh
```

### 5. Verify Deployment

After running the deployment script, verify that the deployment completed successfully and that the application is running as expected.

## Deployment Summary

The basic deployment workflow is:

```text
Clone Repository
      ↓
Enter RetailHub Directory
      ↓
Review Configuration
      ↓
Run deploy.sh
      ↓
Verify Deployment
```