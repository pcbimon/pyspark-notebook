# Base image with Python 3.12
FROM python:3.12-slim

# Install necessary system dependencies as root
USER root
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install pip and upgrade it
RUN python3 -m pip install --upgrade pip

# Install JupyterLab and PySpark 3.4.1
RUN pip install jupyterlab pyspark==3.4.1

# Create a new user and group
RUN useradd -m -s /bin/bash jupyteruser

# Create a working directory for the new user
RUN mkdir /home/jupyteruser/work && chown -R jupyteruser:jupyteruser /home/jupyteruser/work

# Switch to the new user
USER jupyteruser

# Set the working directory to the new user's work folder
WORKDIR /home/jupyteruser/work

# Expose JupyterLab port
EXPOSE 8888
