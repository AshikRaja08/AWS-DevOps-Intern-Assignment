#!/bin/bash

echo "====================================="
echo "     Nginx Restart Script"
echo "====================================="

echo "Restarting Nginx..."
sudo systemctl restart nginx

echo ""

echo "Checking Nginx Status..."
sudo systemctl status nginx --no-pager

echo ""

if systemctl is-active --quiet nginx; then
    echo "✅ Nginx restarted successfully and is running."
else
    echo "❌ Nginx failed to start."
fi
