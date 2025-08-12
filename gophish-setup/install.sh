#!/bin/bash

# GoPhish Security Awareness Platform Installation Script
# Created for educational and authorized security testing purposes only

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}   GoPhish Security Awareness Setup    ${NC}"
echo -e "${BLUE}========================================${NC}"

# Check if running as root
if [[ $EUID -eq 0 ]]; then
   echo -e "${RED}This script should not be run as root for security reasons${NC}"
   exit 1
fi

# Create directory structure
echo -e "${YELLOW}Creating directory structure...${NC}"
mkdir -p gophish/{config,templates,landing-pages,campaigns,training-materials,logs}
cd gophish

# Download latest GoPhish release
echo -e "${YELLOW}Downloading latest GoPhish release...${NC}"
LATEST_VERSION=$(curl -s https://api.github.com/repos/gophish/gophish/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
echo -e "${GREEN}Latest version: $LATEST_VERSION${NC}"

# Detect system architecture
ARCH=$(uname -m)
case $ARCH in
    x86_64) ARCH="64bit";;
    i386|i686) ARCH="32bit";;
    armv7l) ARCH="armv6";;
    aarch64) ARCH="armv6";;
    *) echo -e "${RED}Unsupported architecture: $ARCH${NC}"; exit 1;;
esac

OS=$(uname -s | tr '[:upper:]' '[:lower:]')
DOWNLOAD_URL="https://github.com/gophish/gophish/releases/download/$LATEST_VERSION/gophish-$LATEST_VERSION-$OS-$ARCH.zip"

echo -e "${YELLOW}Downloading from: $DOWNLOAD_URL${NC}"
wget -O gophish.zip $DOWNLOAD_URL

# Extract GoPhish
echo -e "${YELLOW}Extracting GoPhish...${NC}"
unzip -q gophish.zip
rm gophish.zip

# Make executable
chmod +x gophish

# Create configuration file
echo -e "${YELLOW}Creating configuration file...${NC}"
cat > config/config.json << 'EOF'
{
  "admin_server": {
    "listen_url": "127.0.0.1:3333",
    "use_tls": true,
    "cert_path": "gophish_admin.crt",
    "key_path": "gophish_admin.key"
  },
  "phish_server": {
    "listen_url": "0.0.0.0:80",
    "use_tls": false,
    "cert_path": "example.crt",
    "key_path": "example.key"
  },
  "db_name": "sqlite3",
  "db_path": "gophish.db",
  "migrations_prefix": "db/db_",
  "contact_address": "",
  "logging": {
    "filename": "logs/gophish.log",
    "level": "info"
  }
}
EOF

# Create systemd service file
echo -e "${YELLOW}Creating systemd service file...${NC}"
cat > gophish.service << EOF
[Unit]
Description=GoPhish Phishing Framework
After=network.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$(pwd)
ExecStart=$(pwd)/gophish
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

# Create startup script
echo -e "${YELLOW}Creating startup script...${NC}"
cat > start.sh << 'EOF'
#!/bin/bash

# Start GoPhish with proper configuration
echo "Starting GoPhish Security Awareness Platform..."
echo "Admin Interface: https://localhost:3333"
echo "Phishing Server: http://localhost:80"
echo ""
echo "Default credentials will be displayed on first run."
echo "Please change the default password immediately!"
echo ""

# Start GoPhish
./gophish
EOF

chmod +x start.sh

# Create SSL certificates for admin interface
echo -e "${YELLOW}Generating SSL certificates for admin interface...${NC}"
openssl req -new -x509 -days 365 -nodes -out gophish_admin.crt -keyout gophish_admin.key -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost" 2>/dev/null

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}   Installation Complete!              ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo "1. Review configuration in config/config.json"
echo "2. Start GoPhish: ./start.sh"
echo "3. Access admin interface: https://localhost:3333"
echo "4. Change default password on first login"
echo "5. Configure SMTP settings for email sending"
echo ""
echo -e "${RED}IMPORTANT SECURITY NOTES:${NC}"
echo "- Only use this for authorized security testing"
echo "- Always get written permission before testing"
echo "- Keep default credentials secure"
echo "- Regularly update GoPhish to latest version"
echo ""
echo -e "${BLUE}Documentation available in training-materials/README.md${NC}"