#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/wordpress-setup.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Starting WordPress server setup..."

dnf install -y httpd php php-mysqlnd php-fpm php-json php-gd php-mbstring php-xml php-curl php-zip curl wget tar

systemctl enable --now httpd
systemctl enable --now php-fpm

# Create a basic health-check endpoint.

mkdir -p /var/www/html
cat > /var/www/html/healthstatus <<'EOF'
healthy
EOF

chown -R apache:apache /var/www/html

echo "WordPress server packages installed."
echo "Database configuration and EFS mounting must be completed separately."
