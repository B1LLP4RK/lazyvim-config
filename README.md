# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Installation

### WSL Ubuntu

- copy and paste the following script to your WSL terminal. Give permission and provide passwords when prompted.

```bash
sudo apt update
sudo apt upgrade

sudo apt install build-essential gcc lua5.1 luarocks fzf ripgrep fd-find npm nodejs

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
USERNAME=$(whoami)
echo >> /home/$USERNAME/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USERNAME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install neovim
brew install jesseduffield/lazygit/lazygit

mkdir -p ~/.config/
cd ~/.config
git clone https://github.com/B1LLP4RK/lazyvim-config.git
mv lazyvim-config nvim
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
```

Above script is just a short version of the one below

```bash
# updating and upgrading packages
sudo apt update
sudo apt upgrade

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Run these commands in your terminal to add Homebrew to your PATH:
USERNAME=$(whoami)
echo >> /home/$USERNAME/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USERNAME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# Install Homebrew's dependencies if you have sudo access:
sudo apt install build-essential
# For more information, see:
# https://docs.brew.sh/Homebrew-on-Linux

# We recommend that you install GCC:
# brew install gcc
apt install gcc


# install neovim
brew install neovim

# install lazy nvim requirements
sudo apt install lua5.1 luarocks

# install lazyvim reqruiements
brew install jesseduffield/lazygit/lazygit
# apt install gcc
sudo apt install fzf ripgrep fd-find

mkdir -p ~/.config/
cd ~/.config
git clone https://github.com/B1LLP4RK/lazyvim-config.git
mv lazyvim-config nvim

# install nvm node and npm for mason.nvim
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node

# for mason.nvim
sudo apt install nodejs npm
```

### Windows
