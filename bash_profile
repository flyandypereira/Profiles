source ~/.bashrc
    
#export PS1="\[\033[01;37m\]\w\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] >: " # No background color
export PS1="\[\e[37;46m\] \w \[\e[m\]\[\e[37;41m\]\`parse_git_branch2\`\[\e[37;46m\] >:\[\e[m\] " # With background color

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"

function _update_ps1() {
    PS1="$(~/.powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export NVM_DIR=/Users/andypereira/.nvm
alias showhidden='defaults write com.apple.Finder AppleShowAllFiles YES'
alias hidehidden='defaults write com.apple.Finder AppleShowAllFiles NO'
alias projects='cd ~/Projects/'
alias ios='cd ~/Projects/ios'
alias buildloganberry='DELTA_ENV=development ./go-ci ios:shared'
alias ls='ls -G'
alias ll='ls -la'
alias la='ls -a'
alias ~='cd ~'
alias resetprofile='. ~/.bash_profile'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

ulimit -n 1024
source ~/.git-completion.bash
ANDROID_HOME=/usr/local/opt/android-sdk
ANDROID_SDK_ROOT=/Users/andypereira/Library/Android/sdk