#!/bin/bash

# Local Development Server for The Great Icon LLC Website
# This script starts a simple HTTP server for local development

echo "🚀 Starting The Great Icon LLC Development Server..."
echo "📂 Serving files from: $(pwd)"
echo "🌐 Server will be available at: http://localhost:8000"
echo "🛑 Press Ctrl+C to stop the server"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "✅ Using Python 3 HTTP server"
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "✅ Using Python 2 HTTP server"
    python -m SimpleHTTPServer 8000
else
    echo "❌ Python is not installed. Please install Python to run the development server."
    echo "   You can also use any other static file server like 'npx serve' or 'live-server'"
    exit 1
fi
