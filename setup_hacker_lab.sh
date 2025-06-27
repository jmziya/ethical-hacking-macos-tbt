#!/bin/bash

echo "Tribute to Chaos! Wamaka Waxy Banda."
echo "🔥 Setting up your macOS Ethical Hacking Lab 🔐"

# Check for Homebrew
if ! command -v brew &>/dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew already installed"
fi

echo "🔄 Updating Homebrew..."
brew update

echo "📦 Installing core hacking tools..."
brew install nmap
brew install masscan
brew install john
brew install aircrack-ng
brew install nikto
brew install metasploit
brew install theharvester
brew install amass
brew install python
brew install git
brew install docker
brew install tmux
brew install zsh

echo "🕸️ Installing Wireshark (GUI App)..."
brew install --cask wireshark

echo "🌐 Installing Burp Suite Community Edition (GUI App)..."
brew install --cask burp-suite

echo "🔐 Installing OWASP ZAP (GUI App)..."
brew install --cask owasp-zap

echo "📁 Cloning Social Engineering Toolkit (SET)..."
git clone https://github.com/trustedsec/social-engineer-toolkit.git ~/set
cd ~/set && python3 setup.py install

echo "⚙️ Setting zsh as default shell..."
chsh -s /bin/zsh

echo "📚 Creating hacking aliases..."
cat <<EOL >> ~/.zshrc

# Hacking aliases
alias ports='nmap -sT'
alias stealth='nmap -sS -Pn'
alias fullscan='nmap -A -T4'
alias discover='theHarvester -d'
alias burp='open -a "Burp Suite Community Edition"'
alias zap='open -a "OWASP ZAP"'
EOL

source ~/.zshrc

echo "✅ Done! RESTART your terminal to begin using your new hacking toolkit."
echo "🚀 Happy hacking, Commander Jacob 👨🏽‍💻🕶️"
