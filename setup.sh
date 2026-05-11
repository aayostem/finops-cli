#!/bin/bash
set -e
echo "🔧 Setting up FinOps Toolkit..."

# Tool Check
for cmd in aws jq python3; do
    command -v $cmd >/dev/null 2>&1 || { echo "❌ $cmd not found."; exit 1; }
done

[ -f "requirements.txt" ] && pip3 install -r requirements.txt

echo "🔐 Making scripts executable..."
find . -name "*.sh" -exec chmod +x {} +
find . -name "*.py" -exec chmod +x {} +

echo "✅ Setup complete! Run: ./audits/aws-waste-audit.sh"
