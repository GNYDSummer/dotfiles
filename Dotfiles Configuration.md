# Dotfiles Configuration

## Emacs

1.  Install GNU Emacs

```sh
brew install --cask emacs
```

2. Quick Start

```sh
mv ~/.emacs.d ~/.emacs.d.bak
git clone --depth 1 https://github.com/seagle0128/.emacs.d.git ~/.emacs.d
```

[1]: https://github.com/seagle0128/.emacs.d	"Centaur Emacs"
Link: https://github.com/seagle0128/.emacs.d "Centaur Emacs" 


## Homebrew

```sh
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#install fasd
brew install fasd
#install autojump
brew install autojump
# install tmux
brew install tmux
brew install reattach-to-user-namespace
brew install cmake
#install node and nvm
brew install node
brew install nvm
nvm install 16.15.1
# install tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# for ls & cat gnu version  for easing dired-quick-sort
brew install coreutils
brew install fd
brew install ripgrep

brew install pyenv
pyenv install 2.7.18
pyenv global 2.7.18
pip install percol
```

And so on…

[2]: https://github.com/zilongshanren/dotfiles	"zilongshanren’s dotfiles"
Link: https://github.com/zilongshanren/dotfiles	"zilongshanren's dotfiles"


## Neovim

1. Require

```sh
brew info neovim
brew install neovim@0.7.0
brew install gcc
brew install cmake
brew install make
brew install fd
brew install rg
brew install glow
brew install lazygit
brew install global
```

Nerd Font

```sh
brew tap homebrew/cask-fonts
brew cask install font-sourcecodepro-nerd-font
brew ...
```

2. Install

```sh
git clone https://github.com/ravenxrz/dotfiles.git ~/.config/dotfiles
ln -s ~/.config/dotfiles/nvim ~/.config
nvim +PackerSync
LspInstallInfo
DIInstall xxx(debuger)
```

[3]: https://github.com/ravenxrz/dotfiles/tree/master/nvim	"Neovim Configuration"
[4]: https://github.com/theniceboy/nvim/blob/master/README_cn.md
[5]: https://github.com/glepnir/jarvim
[6]: https://github.com/ayamir/nvimdots
[7]: https://gist.github.com/zprhhs/9630dd6d666995236319afb35293a77b
Link: 
   https://github.com/ravenxrz/dotfiles/tree/master/nvim  "Neovim Configuration"
   https://github.com/theniceboy/nvim/blob/master/README_cn.md
   https://github.com/glepnir/jarvim
   https://github.com/ayamir/nvimdots
   https://gist.github.com/zprhhs/9630dd6d666995236319afb35293a77b


## Tmux

1. Require

```sh
brew install awk,perl,sed
```

2. Install

```sh
git clone https://github.com/gpakosz/.tmux.git /path/to/oh-my-tmux
ln -s -f /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
cp /path/to/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local
```

