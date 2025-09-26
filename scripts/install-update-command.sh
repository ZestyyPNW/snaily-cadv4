#!/bin/bash
# Install global update-snaily command

echo "🔧 Installing global update-snaily command..."

# Create the global command file
sudo tee /usr/local/bin/update-snaily > /dev/null << 'EOF'
#!/bin/bash
# Global SnailyCAD Update Command

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
EOF

# Make it executable
sudo chmod +x /usr/local/bin/update-snaily

echo "✅ Global command installed!"
echo ""
echo "You can now run: update-snaily"
echo "From anywhere on your system!"