#!/bin/bash
# Install pyparted during ISO creation
cd /usr/src/pyparted
python setup.py install

# Install pip
pacman --noconfirm -Sy python-pip

# Install required Python modules
pip install pydantic pyalpm requests urllib3 certifi chardet idna

# Ensure .bashrc exists for the root user
touch /root/.bashrc

# Add chmod command for GamerX_Install to .bashrc
echo 'chmod +x /usr/bin/GamerX_Install' >> /root/.bashrc
