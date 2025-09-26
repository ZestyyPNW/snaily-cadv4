#!/bin/bash
# SnailyCAD Update Script

echo "🚀 Starting SnailyCAD Update..."
echo "================================"

# Navigate to SnailyCAD directory
cd /root/snaily-cadv4

# Pull latest changes from GitHub
echo "📥 Pulling latest changes from GitHub..."
git pull origin main

# Install/update dependencies
echo "📦 Installing dependencies..."
pnpm install

# Build the application
echo "🔨 Building SnailyCAD..."
pnpm build

# Restart with PM2 (if using PM2)
echo "🔄 Restarting SnailyCAD..."
pm2 restart snailycad || echo "PM2 restart failed or not configured"

echo "================================"
echo "✅ SnailyCAD updated successfully!"
echo ""
echo "View logs with: pm2 logs snailycad"