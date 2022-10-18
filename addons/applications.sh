echo "${GREEN}Installing desktop applications... This may take a while.${NOCOL}\n"

if [[ ! -d "/Applications/Docker.app" ]]; then
    brew install --cask docker
fi

if [[ ! -d "/Applications/iTerm.app" ]]; then
    brew install --cask iterm2
fi

if [[ ! -d "/Applications/Visual Studio Code.app" ]]; then
    brew install --cask visual-studio-code
fi

if [[ ! -d "/Applications/Sequel Ace.app" ]]; then
    brew install --cask sequel-ace
fi

if [[ ! -d "/Applications/Google Chrome.app" ]]; then
    brew install --cask google-chrome
fi

if [[ ! -d "/Applications/Postman.app" ]]; then
    brew install --cask postman
fi

# Used to have to check if M1 (arm64) or Intel (x86_64) but looks like 22H2 VMWare Fusion now supports Silicon by default.
if [[ ! -d "/Applications/VMware Fusion.app" ]]; then
    brew install --cask vmware-fusion
fi

if [[ ! -d "/Applications/Slack.app" ]]; then
    brew install --cask slack
fi

if [[ ! -d "/Applications/Firefox.app" ]]; then
    brew install --cask firefox
fi

if [[ ! -d "/Applications/zoom.us.app" ]]; then
    brew install --cask zoom
fi
