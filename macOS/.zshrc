export ZSH=/Users/kay/.oh-my-zsh

ZSH_THEME="pygmalion"
# ZSH_THEME="random"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"

plugins=(
  git docker docker-compose
)

unalias -m '*'

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

export SSH_KEY_GITHUB_PERSONAL="~/.ssh/id_rsa"

# My aliases

alias g="ssh-add -D;ssh-add $SSH_KEY_GITHUB_PERSONAL"

alias please="sudo"

alias es="~/elasticsearch-6.1.0/bin/elasticsearch"
alias kibana="~/kibana-6.1.0-darwin-x86_64/bin/kibana"
alias redis="redis-server /usr/local/etc/redis.conf"

alias iphone-simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor"
alias android-accept-licences="$ANDROID_HOME/tools/bin/sdkmanager --licenses"
alias s8="adb connect 192.168.0.183"
alias touchbar-fix="pkill "Touch Bar agent""
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias tw='open -a /Applications/TextWrangler.app'
alias rmnm='rm -rf node_modules'
alias s='source ~/.zshrc'

# history
h(){ history | tail -n $1 } # $1=NumberOfLines
hFind(){ history | grep $1 } # $1=keywordToFind

# MongoDB
alias mongod='mongod --dbpath ~/data/db --port 27017'
mDump(){ mongodump -d $1 -o $2 } # $1=dbName $2=path
mRestore(){ mongorestore --db $1 --verbose $2 } # $1=dbName $2=path

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
