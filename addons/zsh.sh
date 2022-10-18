# Install and configure ohmyzsh

# TODO: check if ohmyzsh and plugins are already installed/configured
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# Install custom zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Set up plugins/theme in zsh shell
zsh -ic "omz plugin enable zsh-autosuggestions"
zsh -ic "omz theme set eastwood"

# Set aliases
cp ${SCRIPT_DIR}/aliases.zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}