ZSH_THEME=""

# EXAMPLE BELOW
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
        git
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# typewritten settings
export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
# export TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
# export TYPEWRITTEN_RELATIVE_PATH="home"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#768ecc;secondary:#768ecc;accent:#768ecc;info_neutral_1:#768ecc;notice:#768ecc"
# export TYPEWRITTEN_COLOR_MAPPINGS="primary:#ab76cc;secondary:#ab76cc;accent:#ab76cc;info_neutral_1:#ab76cc;notice:#ab76cc"

# Set typewritten ZSH as a prompt
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten

export EDITOR=vim
# eval "$(direnv hook zsh)"

# export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH="$PATH:/opt/nvim-linux64/bin:$JAVA_HOME/bin"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

alias t=tmux
alias rm="echo \*\* Using trash instead of rm \*\* && trash"
