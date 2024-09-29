#!/bin/bash

# Update package lists
sudo apt-get update

# Install Python3 and pip if not already installed
sudo apt-get install -y python3 python3-pip

# Install virtual environment
pip3 install --user virtualenv

# Create a virtual environment
python3 -m virtualenv venv

# Upgrade pip in the virtual environment
source venv/bin/activate
pip install --upgrade pip

# Install Python dependencies
pip install -r requirements.txt

# Add virtual environment activation to .bashrc
echo "source $(pwd)/venv/bin/activate" >> ~/.bashrc

echo "Setup is complete. The virtual environment will be activated automatically in new terminal sessions."
echo "To activate the virtual environment in the current session, run 'source venv/bin/activate'."
