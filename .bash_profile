source ~/.profile
#set default python version
#alias python="/Library/Frameworks/Python.framework/Versions/3.9/bin/python3"

#export PATH="/Users/gnydsummer/miniforge3/bin:${PATH}"
COPYFILE_DISABLE=1;
export COPYFILE_DISABLE

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/gnydsummer/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/gnydsummer/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/gnydsummer/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/gnydsummer/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# JDK
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar
# 默认JDK为8
export JAVA_HOME=$JAVA_8_HOME
# 切换JDK版本
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk11="export JAVA_HOME=$JAVA_11_HOME"
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
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# MongoDB
export MONGODB_HOME=/usr/local/mongodb-macos-x86_64-5.0.5
export PATH=$PATH:$MONGODB_HOME/bin

# PostgreSQL
export PGDATA=/usr/local/var/postgres

# Wine
export WINEDEBUG=-all

# OpenCV
export PATH="/opt/homebrew/Cellar/opencv/4.5.5/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/Cellar/opencv/4.5.5/lib"
export CPPFLAGS="-I/opt/homebrew/Cellar/opencv/4.5.5/include/opencv4"
export PKG_CONFIG_PATH="/opt/homebrew/Cellar/opencv/4.5.5/lib/pkgconfig"

# Vue-Cli
source ~/MyVueCli.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

