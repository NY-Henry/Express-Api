#!/bin/bash

# Express TypeScript Boilerplate Setup Script
# Usage: bash setup-new-project.sh <project-name>

if [ -z "$1" ]; then
    echo "❌ Please provide a project name"
    echo "Usage: bash setup-new-project.sh <project-name>"
    exit 1
fi

PROJECT_NAME=$1
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CURRENT_DIR=$(pwd)
NEW_PROJECT_DIR="$CURRENT_DIR/$PROJECT_NAME"

echo "🚀 Setting up new Express TypeScript project: $PROJECT_NAME"

# Create new project directory
mkdir -p "$NEW_PROJECT_DIR"
cd "$NEW_PROJECT_DIR"

# Initialize npm
npm init -y

# Install dependencies
echo "📦 Installing dependencies..."
npm install express dotenv
npm install --save-dev typescript @types/express @types/node @types/dotenv nodemon ts-node

# Copy configuration files
echo "📄 Copying configuration files..."
cp "$SCRIPT_DIR/tsconfig.json" .
cp "$SCRIPT_DIR/nodemon.json" .

# Create directory structure
mkdir -p src
mkdir -p src/routes
mkdir -p src/middleware
mkdir -p src/utils
mkdir -p src/types

# Copy source files
cp "$SCRIPT_DIR/src/app.ts" src/
cp "$SCRIPT_DIR/.env" .

# Copy example files
echo "📋 Copying example templates..."
cp "$SCRIPT_DIR/src/routes/example.ts" src/routes/
cp "$SCRIPT_DIR/src/middleware/index.ts" src/middleware/
cp "$SCRIPT_DIR/src/utils/index.ts" src/utils/
cp "$SCRIPT_DIR/src/types/index.ts" src/types/

# Update package.json with correct project name and scripts
node -e "
const fs = require('fs');
const pkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
pkg.name = '$PROJECT_NAME';
pkg.type = 'module';
pkg.scripts = {
  'start': 'node dist/app.js',
  'dev': 'nodemon src/app.ts',
  'build': 'tsc',
  'test': 'echo \"Error: no test specified\" && exit 1'
};
fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));
"

# Create README
cat > README.md << EOL
# $PROJECT_NAME

Express TypeScript application bootstrapped from boilerplate.

## 🚀 Quick Start

\`\`\`bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Start production server
npm start
\`\`\`

## 📁 Project Structure

\`\`\`
src/
├── app.ts          # Main application file
├── routes/         # Route handlers
├── middleware/     # Custom middleware
├── utils/          # Utility functions
└── types/          # TypeScript type definitions
\`\`\`

## 🛠️ Available Scripts

- \`npm run dev\` - Start development server with hot reload
- \`npm run build\` - Build for production
- \`npm start\` - Start production server
- \`npm test\` - Run tests

## 🔧 Configuration

- \`.env\` - Environment variables
- \`tsconfig.json\` - TypeScript configuration
- \`nodemon.json\` - Nodemon configuration

## 📝 Environment Variables

Copy \`.env\` and configure:

\`\`\`
PORT=4000
\`\`\`
EOL

# Create .gitignore
cat > .gitignore << EOL
# Dependencies
node_modules/
npm-debug.log*

# Build output
dist/
build/

# Environment variables
.env.local
.env.production

# Logs
logs
*.log

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# TypeScript
*.tsbuildinfo
EOL

echo "✅ Project $PROJECT_NAME created successfully!"
echo "📍 Location: $NEW_PROJECT_DIR"
echo ""
echo "🎯 Next steps:"
echo "   cd $PROJECT_NAME"
echo "   npm run dev"
echo ""
echo "🌐 Your app will be available at: http://localhost:4000"
