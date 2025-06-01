#!/bin/bash

# Global Installation Script for Express TypeScript Boilerplate
# This script installs the boilerplate globally so you can use it from anywhere

BOILERPLATE_DIR="$HOME/.express-ts-boilerplate"
SCRIPT_NAME="create-express-ts"

echo "🚀 Installing Express TypeScript Boilerplate globally..."

# Create global directory
mkdir -p "$BOILERPLATE_DIR"

# Copy all boilerplate files
echo "📦 Copying boilerplate files..."
cp -r "$(dirname "$0")"/* "$BOILERPLATE_DIR/"

# Create global executable script
cat > "$HOME/.local/bin/$SCRIPT_NAME" << 'EOL'
#!/bin/bash
BOILERPLATE_DIR="$HOME/.express-ts-boilerplate"
bash "$BOILERPLATE_DIR/setup-new-project.sh" "$@"
EOL

# Make it executable
chmod +x "$HOME/.local/bin/$SCRIPT_NAME"

# Add to PATH if not already there
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "📝 Adding $HOME/.local/bin to PATH..."
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    echo "⚠️  Please run: source ~/.bashrc or restart your terminal"
fi

echo "✅ Express TypeScript Boilerplate installed globally!"
echo ""
echo "🎯 Usage:"
echo "   $SCRIPT_NAME my-new-project"
echo ""
echo "📍 Boilerplate installed at: $BOILERPLATE_DIR"
echo "🔧 Global command: $SCRIPT_NAME"
echo ""
echo "🔄 To update the boilerplate:"
echo "   bash $(dirname "$0")/install-global.sh"
