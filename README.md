# titan_galileo
titan galileo TNT4 auto install linux

Run Titan Agent on Linux
What is Multipass? 
Multipass is a lightweight virtual machine manager that allows you to quickly create and run Ubuntu virtual machines. It's particularly suitable for setting up development and testing environments.

Step 1: Multipass Installation Steps
Check if Snap is Installed

First, ensure your Linux system has Snap installed. Most modern Linux distributions (like Ubuntu, Debian, Fedora, etc.) support Snap by default. Open terminal (press Ctrl + Alt + T) and enter: snap --version

If version information displays, it's installed - skip to step 3 

If you see "command not found", you need to install Snap

Install Snap 

Choose your system and run the corresponding command:

Ubuntu/Debian users:

Copy
sudo apt update
sudo apt install snapd
Fedora users:

Copy
sudo dnf install snapd
CentOS/RHEL users:

Copy
sudo yum install snapd
Enable Snap after installation:

Copy
sudo systemctl enable --now snapd.socket
Install Multipass

Copy
sudo snap install multipass
Wait for installation to complete

Verify Installation

Copy
multipass --version
Seeing a version number means successful installation!

Having Issues?

Command not working? Try adding 'sudo'

Slow download? Check network and retry

Installation interrupted? Run command again

Step 2: Installing and Running Titan Agent
1. Download and Extract Installation Package
Copy
# Download installation package
wget https://pcdn.titannet.io/test4/bin/agent-linux.zip

# Create installation directory
mkdir -p /opt/titanagent

# Extract installation package
unzip agent-linux.zip -d /opt/titanagent
2. Get Your Key
Open browser and visit:

Logo
Titan Network
Log into your Titan account

Find and copy your key

Run the Program

Copy
cd /opt/titanagent

# Run Agent (remember to replace <YOUR_KEY>)
./agent --working-dir=<your-titan-agent-folder-path> --server-url=https://test4-api.titannet.io --key=<your-key>
Replace "your-titan-agent-folder-path" with actual folder location

Replace "your-key" with the key you copied earlier

Common Issues

Download failed? Check network connection

Extraction error? Ensure unzip is installed: apt install unzip or yum install unzip

Insufficient permissions? Use sudo to run commands

Program won't run? Add execution permission: chmod +x agent

Tip

Recommended to set up the program as a system service for auto-start on boot
