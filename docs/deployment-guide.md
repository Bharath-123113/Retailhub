# RetailHub Deployment Guide

## Prerequisites

Before deploying the RetailHub application, make sure the following are available:

- Git
- Linux / CentOS
- Bash

## Project Architecture

RetailHub uses separate configuration files to manage application settings, deployment settings, health checks, and logging.

## Application Configuration

The application configuration is maintained in `configs/app.conf`.

Important configuration parameters:

| Parameter | Value | Description |
|---|---|---|
| APP_NAME | retailhub | Application name |
| APP_VERSION | 1.0.0 | Application version |
| APP_ENV | dev | Application environment |
| APP_HOST | 0.0.0.0 | Application host |
| APP_PORT | 8065 | Application port |
| LOG_LEVEL | info | Logging level |
| DB_HOST | localhost | Database host |
| DB_PORT | 5432 | Database port |
| DB_NAME | retailhub_db | Database name |

Database passwords must be provided through environment variables and must not be committed to Git.

## Deployment Configuration

Deployment settings are maintained in `configs/deployment.conf`.

| Parameter | Value | Description |
|---|---|---|
| DEPLOY_ENV | dev | Deployment environment |
| DEPLOY_TARGET | localhost | Deployment target |
| DEPLOY_STRATEGY | rolling | Configured deployment strategy |

These settings describe the intended deployment environment and strategy.

## Health Check Configuration

Health-check settings are maintained in `configs/health-check.conf`.

| Parameter | Value | Description |
|---|---|---|
| APP_NAME | RetailHub | Application name |
| APP_PORT | 8065 | Application port |
| HEALTH_CHECK_PATH | /health | Health-check endpoint |
| HEALTH_CHECK_ENABLED | true | Enables health-check configuration |

The configured health-check endpoint is `/health`.

The endpoint should be tested after the application is running.

## Logging Configuration

Logging settings are maintained in `configs/logging.conf`.

| Parameter | Value | Description |
|---|---|---|
| LOG_LEVEL | info | Logging level |
| LOG_FORMAT | json | Log output format |
| LOG_FILE | logs/retailhub.log | Configured log file |

Application logs are configured to use JSON format and the specified log file location.

### Project Components

- Application: RetailHub application.
- Configuration: Maintains application and environment settings.
- Deployment: Defines deployment environment, target, and strategy.
- Health Check: Defines the application health-check endpoint.
- Logging: Defines log level, format, and log file location.

### Project Structure

```text
Retailhub/
├── app/
├── configs/
│   ├── app.conf
│   ├── deployment.conf
│   ├── health-check.conf
│   └── logging.conf
├── docs/
├── scripts/
├── README.md
└── .gitignore
```

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
**Note:** The `chmod` command is used in Linux environments.
Windows PowerShell does not support this command natively.
Use WSL or another Bash-compatible environment to execute this script.

### Deployment Script Functionality

The deployment script is located at `scripts/deploy.sh`.

The script performs the following operations:

1. Loads the application configuration file.
2. Checks whether the configuration file exists.
3. Imports application configuration variables.
4. Displays application name, version, environment, and port.
5. Prints a completion message.

**Note:** The current script validates and displays configuration information. Actual application deployment is not implemented in this script.

### 5. Verify Deployment

After executing the deployment script in a compatible Bash environment, verify the application configuration and deployment status.

### Verification Checklist

- [ ] Application configuration file exists.
- [ ] Application name and version are displayed correctly.
- [ ] Application environment is displayed correctly.
- [ ] Application port is displayed correctly.
- [ ] Deployment script completes without errors.

**Note:** The current deployment script only validates and displays configuration information. A successful script execution does not confirm that the application server is running.

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