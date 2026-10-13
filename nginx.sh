#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/nginx-setup.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Starting Nginx reverse proxy setup..."

dnf install -y nginx openssl

systemctl enable --now nginx

# Create a basic health-check endpoint for the load balancer.

cat > /usr/share/nginx/html/healthstatus <<'EOF'
healthy
EOF

nginx -t
systemctl reload nginx

echo "Nginx setup completed."
