# 💤 LazyVim

Fork from [LazyVim](https://github.com/LazyVim/LazyVim).

Refer to the [documentation](https://lazyvim.github.io/installation) for more basic info.

## Major changes from LazyVim

- Key binding to turn off diagnostics
  - diagnostics spams warning if you read random readme files online so just turn it off
- Neovim detects the terminal environment whether it is in Kitty or Wezterm.
  - Snacks.image is disabled accordingly to avoid issues in other terminals like windows terminal.
- configuration setup for using snacks.image in Wezterm.
- Clipboard fix for WSL Ubuntu avoiding the issue with ^M character

## Installation

### WSL Ubuntu

- Assuming a freshly installed Ubuntu(this means git and curl is available as default)
- copy and paste the following script to your WSL terminal.
- Give permission and provide passwords when prompted.

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

- Now run the command `nvim`. Some errors will show up as neovim boots, but ignore them with a few presses of space or enter key.
- Exit via the command `:q`
- Rerun `nvim`

#### Notes on clipboard

There is a issue in how line endings are handled as described [here](https://github.com/LazyVim/LazyVim/discussions/5954#discussioncomment-13178737)
However I found a workaround.
Use win32yank in this [link](<https://github.com/equalsraf/win32yank>).

I personally do not prefer this method due to its poor documentation, but too bad its the only option.

Assuming windows and WSL environment,

- Download the exe file from release page
- Go to `/usr/local/` via `cd /usr/local` and create a directory win32yank with `mkdir win32yank`
- Add the path via adding `export PATH=/usr/local/win32yank:$PATH` to your `.bashrc`.
- Move the downloaded win32yank.exe to the `/usr/local/win32yank`
add below to your `~/.config/nvim/lua/config/options.lua

```
vim.g.clipboard = {
  name = "Win32Yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
```

### Windows

Watch the video below
[![Windows installation tutorial](https://img.youtube.com/vi/EpcyqQPOnow/0.jpg)](https://youtu.be/EpcyqQPOnow)

- [Wezterm](https://wezterm.org/index.html) can potentially be used if you need snacks.image and other graphic usage of lazyvim. Howver I have not found how to make it work so far.

### Termux

- Use the termux branch of this repo and not the main.
- tips: lua and luarocks is available in termux pkg by `pkg install lua51 luarocks`
