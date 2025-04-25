# Dotfiles

These are my personal dotfiles, organized for multi-platform (Mac + Linux) and multiple profiles (work + personal).

![Platform](https://img.shields.io/badge/platform-Mac%20%7C%20Linux-blue)
![Maintained](https://img.shields.io/badge/status-maintained-brightgreen)


## ✨ Features

- OS detection (Mac vs Linux)
- Profile switching (Work vs Personal)
- Smart SSH Agent switching (1Password locally, GPG remotely)
- Modular and clean
- Bootstrap install script
- Handy alias to update dotfiles quickly

## 🚀 Quick Setup

1. Clone the repo:

```bash
git clone https://github.com/rghunter/dotfiles.git ~/projects/personal/dotfiles
cd ~/projects/personal/dotfiles
```

2. Run the installer:

```bash
bash install.sh
```

3. (Optional) Set your profile:

Create a `~/.dotprofile` file with either:

```zsh
echo "work" > ~/.dotprofile
```

or

```zsh
echo "work" > ~/.dotprofile
```

4. (Optional) Add this alias to quickly update your dotfiles:

```zsh
alias dotupdate='cd ~/projects/personal/dotfiles && git pull'
```

## 🗂 Directory Structure

```plaintext
dotfiles/
├── install.sh
├── README.md
├── zsh/
│   ├── .zshrc
│   ├── aliases.zsh
│   ├── functions.zsh
│   ├── 10-ssh-agent.zsh
│   ├── os/
│   │   ├── mac.zsh
│   │   └── linux.zsh
│   └── profile/
│       ├── work.zsh
│       └── personal.zsh
├── vim/
│   └── .vimrc
├── git/
│   └── .gitconfig
├── bin/
│   ├── mkproj
│   └── update-dotfiles
└── secrets/ (optional encrypted stuff)
```

## 🛠 Bootstrap Instructions (for new machines)

```bash
# Clone repo
git clone https://github.com/yourusername/dotfiles.git ~/projects/personal/dotfiles

# Install symlinks
cd ~/projects/personal/dotfiles
bash install.sh

# (Optional) Set profile
echo "work" > ~/.dotprofile
```

## 🧙‍♂️ After Setup

- Open a new terminal
- Enjoy your standardized environment
- Customize modular files (`aliases.zsh`, `functions.zsh`, etc.) easily
