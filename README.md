# MLOps Template Repository

This repository serves as a template for MLOps projects, providing a consistent and automated setup across different environments, including distant servers. It includes all the necessary components to get you started quickly and efficiently.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Clone the Repository](#clone-the-repository)
- [Set Up the Environment](#set-up-the-environment)
  - [On the Distant Server](#on-the-distant-server)
  - [Using Docker](#using-docker)
- [Running the Application](#running-the-application)
  - [If Using Virtual Environment](#if-using-virtual-environment)
  - [If Using Docker](#if-using-docker)
- [Running Tests](#running-tests)
- [Accessing Jupyter Notebook](#accessing-jupyter-notebook)
  - [Via Docker](#via-docker)
  - [Locally on the Server](#locally-on-the-server)
- [Cleaning Up](#cleaning-up)
- [Additional Information](#additional-information)
  - [Data Directory](#data-directory)
  - [Configuration](#configuration)
    - [Environment Variables](#environment-variables)
  - [Extending the Project](#extending-the-project)
- [Troubleshooting](#troubleshooting)
  - [Permission Denied Errors](#permission-denied-errors)
  - [Python Version Issues](#python-version-issues)
  - [Virtual Environment Not Activating](#virtual-environment-not-activating)
  - [Docker Build Failures](#docker-build-failures)
  - [Jupyter Notebook Not Accessible](#jupyter-notebook-not-accessible)
- [License](#license)

---

## Prerequisites

Before you begin, ensure you have the following installed on your distant server:

- **Git**: For cloning the repository.
- **Python 3.8+**: Required for running the application.
- **pip**: Python package installer.
- **Virtualenv**: For creating isolated Python environments.
- **Docker** (optional): If you prefer using Docker.

---

## Clone the Repository

First, log into your distant server via SSH:

```
ssh username@your-distant-server-ip
```

Then, clone the repository to your working directory:

```
git clone https://github.com/SkanderGasmi/MLOps-template.git
cd mlops-template
```

### Run the setup script set up the environment:

The setup.sh script automates the environment setup by installing all necessary dependencies and creating a virtual environment.

```
chmod +x setup.py
sudo bash script.sh
```

### Activate the Virtual Environment
After the setup script completes, activate the virtual environment:

```
source venv/bin/activate
```

### Verify Installation
Ensure that all Python packages are installed correctly:

```
pip list
```

