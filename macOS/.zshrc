export ZSH=/Users/kay/.oh-my-zsh

ZSH_THEME="pygmalion"
# ZSH_THEME="random"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"

plugins=(
  git docker docker-compose zsh-autosuggestions zsh-syntax-highlighting
)

unalias -m '*'

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

# ----------- My aliases -----------

# Web Development
alias alexa="yarn"
alias rmnm='rm -rf node_modules'
alias y='yarn'
alias yt='yarn test'
alias serve='npx http-server -o'

# Applications
alias es="~/elasticsearch-6.1.0/bin/elasticsearch"
alias kibana="~/kibana-6.1.0-darwin-x86_64/bin/kibana"
alias redis="redis-server /usr/local/etc/redis.conf"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias tw='open -a /Applications/TextWrangler.app'

# Package manager
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor"
alias brew-backup="brew bundle dump" # Creates a Brewfile

# Mobile development
alias iphone-simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias android-accept-licences="$ANDROID_HOME/tools/bin/sdkmanager --licenses"
alias s8="adb connect 192.168.0.183"

# General
alias s='source ~/.zshrc' #Source .zshrc
alias e='vim ~/.zshrc' #Edit .zshrc
alias p='cd ~/Projects' #Projects directory
alias g="ssh-add -D;ssh-add $SSH_KEY_GITHUB_PERSONAL"
alias git-branch-clean='git branch | grep -v "master" | xargs git branch -D'
alias please="sudo"
alias size="du -hcs"
alias search="grep -rnw . -e"

# Fix mac issues
alias fix-touchbar='pkill "Touch Bar agent"' # unfreeze touchbar
alias fix-system-monitor='rm ~/Library/Preferences/com.apple.ActivityMonitor.plist' # Show all the columns in system monitor

# history
h(){ history | tail -n $1 } # $1=NumberOfLines
hf(){ history | grep $1 } # $1=keywordToFind

# MongoDB
alias mongod='mongod --dbpath ~/data/db --port 27017'
mDump(){ mongodump -d $1 -o $2 } # $1=dbName $2=path
mRestore(){ mongorestore --db $1 --verbose $2 } # $1=dbName $2=path

# ----------- All the exports -----------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
export PATH=/usr/local/mysql/bin:$PATH
