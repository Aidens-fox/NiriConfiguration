# Created by newuser for 5.9
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
PROMPT="%n@%m %1~ %# "
#语法检查和高亮
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
HISTFILE=~/.zsh_history
