#!/bin/bash

# SkySplat.org Setup Script
# This script sets up the Jekyll site for local development without requiring sudo

echo "🚀 Setting up SkySplat.org for local development..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby first:"
    echo "   - macOS: brew install ruby"
    echo "   - Ubuntu: sudo apt-get install ruby-full"
    exit 1
fi

echo "✅ Ruby found: $(ruby --version)"

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler locally..."
    gem install bundler --user-install
    
    # Add gem bin directory to PATH if not already there
    GEM_HOME=$(ruby -e 'puts Gem.user_dir')
    if [[ ":$PATH:" != *":$GEM_HOME/bin:"* ]]; then
        echo "export PATH=\"$GEM_HOME/bin:\$PATH\"" >> ~/.bashrc
        echo "export PATH=\"$GEM_HOME/bin:\$PATH\"" >> ~/.zshrc
        export PATH="$GEM_HOME/bin:$PATH"
    fi
else
    echo "✅ Bundler found: $(bundle --version)"
fi

# Configure Bundler for local installation
echo "🔧 Configuring Bundler for local installation..."
bundle config set --local path 'vendor/bundle'
bundle config set --local without 'development test'

# Install gems locally
echo "📦 Installing gems locally..."
bundle install

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Setup complete! You can now run:"
    echo "   bundle exec jekyll serve"
    echo ""
    echo "Then visit http://localhost:4000 to view your site."
    echo ""
    echo "Note: If you get 'command not found' errors, restart your terminal"
    echo "or run: source ~/.bashrc (or ~/.zshrc)"
else
    echo ""
    echo "❌ Installation failed. Try these alternatives:"
    echo ""
    echo "1. Use rbenv or rvm to manage Ruby versions:"
    echo "   curl -sSL https://get.rvm.io | bash"
    echo "   rvm install ruby"
    echo ""
    echo "2. Use Docker:"
    echo "   docker run --rm -v \"\$PWD\":/usr/src/app -p 4000:4000 jekyll/jekyll:latest jekyll serve --host 0.0.0.0"
    echo ""
    echo "3. Use GitHub Codespaces or similar cloud development environment"
fi