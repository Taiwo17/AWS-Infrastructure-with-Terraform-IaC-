#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/bastion-setup.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Starting bastion host setup..."

dnf install -y bash-completion vim-enhanced curl wget

systemctl enable --now sshd

echo "Bastion host setup completed."
