# SnailyCAD Deployment Guide

## Linux Server Setup

### Initial Setup on Linux Machine

```bash
# Navigate to /root directory
cd /root

# Clone the repository
git clone https://github.com/ZestyyPNW/snaily-cadv4.git

# Navigate to project directory
cd snaily-cadv4

# Install dependencies
pnpm install

# Set up environment variables
cp .env.example .env
# Edit .env with your configuration

# Build the application
pnpm build

# Start with PM2 (optional)
pm2 start ecosystem.config.js --name snailycad
```

### Update Script Usage

Make the update script executable:
```bash
chmod +x scripts/update-snailycad.sh
```

Run updates:
```bash
./scripts/update-snailycad.sh
```

### Environment Setup

Make sure your Linux server has:
- Node.js 18+
- pnpm package manager
- PM2 (optional, for process management)
- Database (MySQL/PostgreSQL)

### PM2 Configuration

If using PM2, create an ecosystem.config.js file in the project root with your configuration.

### Database

Ensure your database is running and accessible with the credentials in your .env file.