export ZSH=/Users/kay/.oh-my-zsh

ZSH_THEME="pygmalion"
# ZSH_THEME="random"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# My aliases
alias es="~/elasticsearch-6.1.0/bin/elasticsearch"
alias kibana="~/kibana-6.1.0-darwin-x86_64/bin/kibana"
alias redis="redis-server /usr/local/etc/redis.conf"

alias jmeter="open /usr/local/bin/jmeter"
alias run-mongo="sudo /Users/kay/mongodb-osx-x86_64-3.6.1/bin/mongod"
alias iphone-simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor"

# All the exports
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
export PATH=/usr/local/mysql/bin:$PATH
