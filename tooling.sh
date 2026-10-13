#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/tooling-setup.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Starting tooling server setup..."

dnf install -y httpd php php-mysqlnd php-fpm php-json php-gd php-mbstring php-xml php-curl php-zip git curl wget tar

systemctl enable --now httpd
systemctl enable --now php-fpm

# Create a basic health-check endpoint.

mkdir -p /var/www/html
cat > /var/www/html/healthstatus <<'EOF'
healthy
EOF

chown -R apache:apache /var/www/html

echo "Tooling server packages installed."
echo "Tooling application deployment and EFS mounting must be completed separately."
