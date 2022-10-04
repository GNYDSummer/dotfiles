# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Zsh Config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
export TERM=xterm-256color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

plugins=(
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  git-open
  dirhistory
  web-search
  wakatime
  extract
  z
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig='nvim ~/.zshrc'
alias bashconfig='nvim ~/.bash_profile'
alias lvim='~/.local/bin/lvim'
alias vimconfig='nvim ~/.vimrc'
alias nvimconfig='nvim ~/.config/nvim/init.lua'

# Emacs
alias doom='emacs --with-profile doom'
alias altdoom='emacs --with-profile altdoom'
alias mardoom='emacs --with-profile mardoom'
alias gindoom='emacs --with-profile gindoom'
alias eldoom='emacs --with-profile eldoom'
alias nydoom='emacs --with-profile nydoom'
alias jusdoom='emacs --with-profile jusdoom'
alias lindoom='emacs --with-profile lindoom'
alias space='emacs --with-profile space'
alias cmspace='emacs --with-profile cmspace'
alias centaur='emacs --with-profile centaur'
alias lunary='emacs --with-profile lunary'
alias nema='emacs --with-profile nema'
alias diamond='emacs --with-profile diamond'
alias kara='emacs --with-profile kara'
alias purcell='emacs --with-profile purcell'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Python
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gnydsummer/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gnydsummer/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/gnydsummer/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gnydsummer/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="$HOME/miniforge3/bin:$PATH"

# Java
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
#export JAVA_HOME=$JAVA_8_HOME
PATH=$JAVA_HOME/bin:$PATH
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
# 切换JDK版本
# alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
# alias jdk11="export JAVA_HOME=$JAVA_11_HOME"
export PATH
export CLASSPATH

# JMeter
export JMETER_HOME=/usr/local/apache-jmeter-5.4.1
export PATH=$JAVA_HOME/bin:$JMETER_HOME/bin:$PATH

# Gradle
export GRADLE_HOME=/Users/gnydsummer/Library/gradle-7.0-bin/gradle-7.0
export PATH=$PATH:$GRADLE_HOME/bin

# Mono
export MONO_HOME=/Library/Frameworks/Mono.framework/Versions/6.12.0
export PATH=$PATH:$MONO_HOME/bin

# Maven
export MAVEN_HOME=/usr/local/apache-maven-3.8.1
export PATH=$PATH:$MAVEN_HOME/bin

# Go
export GOPATH=/Volumes/Extreme\ SSD/Go\ Project
#export GOPATH=/Users/gnydsummer/Desktop/Golang Project
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/bottles"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

# MySQL
alias mysql=/usr/local/mysql/bin/mysql

# MongoDB
export MONGODB_HOME=/usr/local/mongodb-macos-x86_64-5.0.5
export PATH=$PATH:$MONGODB_HOME/bin

# PostgreSQL
export PGDATA=/usr/local/var/postgres

# Wine
export WINEDEBUG=-all

# OpenCV
export PATH="/opt/homebrew/Cellar/opencv/4.5.5/bin:$PATH"
# export LDFLAGS="-L/opt/homebrew/Cellar/opencv/4.5.5/lib"
# export CPPFLAGS="-I/opt/homebrew/Cellar/opencv/4.5.5/include"
export PKG_CONFIG_PATH="/opt/homebrew/Cellar/opencv/4.5.5/lib/pkgconfig"

# Vue-Cli
source $HOME/MyVueCli.sh

# llvm
# export LDFLAGS="-L/opt/homebrew/opt/llvm@12/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm@12/include"
# clangd
export PATH="/opt/homebrew/opt/llvm@12/bin:$PATH"
# gcc
# alias gcc='gcc-12'
# alias g++='g++-12'
export PATH="/opt/homebrew/Cellar/gcc/11.2.0/bin:$PATH"
# make
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
