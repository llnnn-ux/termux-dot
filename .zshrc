# Created by newuser for 5.8
fpath=(~/.zsh/zsh-completions/src/ $fpath)
autoload -U compinit; compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
autoload -U promptinit; promptinit
prompt spaceship
setopt auto_cd
setopt correct
function chpwd() { exa }
setopt nolistbeep
# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:(processes|jobs)' menu yes select=2
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
source ~/.aliasrc
bindkey -v

