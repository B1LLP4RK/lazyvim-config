# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## installation

### WSL Ubuntu

- `vim install`
- run

```
sudo apt update
sudo apt upgrade

```

- copy and paste the following script to the open file and exit via `:wq`

```
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
# sudo apt install build-essential
# For more information, see:
# https://docs.brew.sh/Homebrew-on-Linux

# We recommend that you install GCC:
# brew install gcc
# apt install gcc
sudo apt install build-essential gcc

# install neovim
brew install neovim

# install lazy nvim requirements
sudo apt install lua5.1 luarocks

# install lazyvim reqruiements
brew install jesseduffield/lazygit/lazygit
# apt install gcc
apt install fzf ripgrep fd-find

mkdir -p ~/.config/
cd ~/.config
git clone https://github.com/B1LLP4RK/lazyvim-config.git
mv lazyvim-config nvim


```

- run `sudo bash ./install`
