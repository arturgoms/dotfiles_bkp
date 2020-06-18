source /home/artur/antigen.zsh
alias python3='/usr/bin/python3.6' 
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
export EDITOR="nvim"
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen use oh-my-zsh

antigen bundle git
antigen bundle npm
antigen bundle encode64
antigen bundle colorize
antigen bundle github
antigen bundle brew
antigen bundle osx
antigen bundle rails
antigen bundle python
antigen bundle ruby
antigen bundle capistrano
antigen bundle bundler
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
#antigen theme eendroroy/alien alien
#antigen theme reobin/typewritten typewritten
antigen theme ergenekonyigit/lambda-gitster lambda-gitster
#antigen theme reobin/typewritten typewritten

#antigen theme denysdovhan/spaceship-prompt
# Tell Antigen that you're done.
antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$PATH:/opt/yarn-0.32/bin"
if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/artur/git/electron-web-worker-example/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/artur/git/electron-web-worker-example/node_modules/tabtab/.completions/electron-forge.zsh