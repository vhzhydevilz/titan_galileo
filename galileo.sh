#!/bin/bash

# Menampilkan Banner ASCII ZHYDEVZ
echo "███████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██╗   ██╗███████╗"
echo "╚══███╔╝██║  ██║╚██╗ ██╔╝██╔══██╗██╔════╝██║   ██║╚══███╔╝"
echo "  ███╔╝ ███████║ ╚████╔╝ ██║  ██║█████╗  ██║   ██║  ███╔╝ "
echo " ███╔╝  ██╔══██║  ╚██╔╝  ██║  ██║██╔══╝  ╚██╗ ██╔╝ ███╔╝  "
echo "███████╗██║  ██║   ██║   ██████╔╝███████╗ ╚████╔╝ ███████╗"
echo "╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝"
echo "                                                           "

# Menampilkan pesan "Updating system..."
echo -e "\e[1;32mUpdating system...\e[0m"
sudo apt update

# Memastikan unzip terinstal
echo -e "\e[1;34mInstalling unzip...\e[0m"
sudo apt install -y unzip

# Instalasi Snapd
echo -e "\e[1;33mInstalling Snapd...\e[0m"
sudo apt install -y snapd

# Enable Snapd service
echo -e "\e[1;36mEnabling snapd...\e[0m"
sudo systemctl enable --now snapd.socket

# Instalasi Multipass
echo -e "\e[1;35mInstalling Multipass...\e[0m"
sudo snap install multipass

# Verifikasi instalasi Multipass
echo -e "\e[1;37mVerifying Multipass installation...\e[0m"
multipass --version

# Download dan ekstrak paket instalasi
echo -e "\e[1;31mDownloading and extracting installation package...\e[0m"
wget https://pcdn.titannet.io/test4/bin/agent-linux.zip

# Membuat direktori instalasi
echo -e "\e[1;32mCreating installation directory...\e[0m"
mkdir -p /opt/titanagent

# Mengekstrak paket zip
echo -e "\e[1;33mExtracting package...\e[0m"
unzip agent-linux.zip -d /opt/titanagent

# Menavigasi ke direktori instalasi
cd /opt/titanagent

# Meminta user untuk memasukkan key
echo -e "\e[1;34mPlease enter your key:\e[0m"
read user_key

# Menjalankan agent dengan key yang diberikan
echo -e "\e[1;35mRunning agent with provided key...\e[0m"
./agent --working-dir=/opt/titanagent --server-url=https://test4-api.titannet.io --key=$user_key

echo -e "\e[1;32mInstallation and setup complete!\e[0m"
