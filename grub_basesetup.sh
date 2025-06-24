#!/bin/bash

# Step 1: Download necessary tools
echo "Downloading necessary tools to check OS present on the disk..."
# Install GRUB-related packages (if not already installed)
sudo pacman -S --needed grub os-prober

# Step 2: Configure GRUB
echo "Configuring GRUB..."
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Step 3: Update the system
echo "Updating the system..."
sudo pacman -Syyu --noconfirm

# Step 4: Install necessary dependencies
echo "Installing required packages (git, base-devel)..."
sudo pacman -S --needed git base-devel --noconfirm

# Step 5: Clone the HyDE repository
echo "Cloning HyDE repository from GitHub..."
git clone --depth 1 https://github.com/prasanthrangan/hyprdots ~/HyDE

# Step 6: Navigate to the script directory and run installation
echo "Running the HyDE installation script..."
cd ~/HyDE/Scripts/
chmod +x install
./install

