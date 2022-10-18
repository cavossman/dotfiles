# STEP 0: Script Variables

CLEAR="\033c"
GREEN="\033[1;32m"
NOCOL='\033[0m'
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# STEP 1: Initial Setup
echo "${GREEN}Intitiating setup...${NOCOL}\n"

which -s brew
if [[ $? != 0 ]]; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # If M1 Mac then add brew to path.
    # Brew binaries are installed to /opt/homebrew/bin now rather than /usr/local/bin which is already in $PATH
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'export PATH=/opt/homebrew/bin:$PATH' >~/.zprofile # or .bash_profile
        source ~/.zprofile
    fi
else
    brew update -q
fi

source ${SCRIPT_DIR}/addons/zsh.sh

# STEP 2: Install Applications

source ${SCRIPT_DIR}/addons/applications.sh

# STEP 3: Install Packages

source ${SCRIPT_DIR}/addons/packages.sh

# STEP 4: Copy Scripts to PATH

chmod +x ./scripts/provision
cp ./scripts/provision /usr/local/bin