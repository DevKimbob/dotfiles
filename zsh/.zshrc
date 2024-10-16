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

fpath=($fpath "/home/devkimbob/.zfunctions")

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

# typewritten settings
export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
# export TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"
export TYPEWRITTEN_RELATIVE_PATH="adaptive"
# export TYPEWRITTEN_RELATIVE_PATH="home"
export TYPEWRITTEN_CURSOR="block"
# export TYPEWRITTEN_COLOR_MAPPINGS="primary:#ab76cc;secondary:#ab76cc;accent:#ab76cc;info_neutral_1:#ab76cc;notice:#ab76cc"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:#768ecc;secondary:#768ecc;accent:#768ecc;info_neutral_1:#768ecc;notice:#768ecc"

# Set typewritten ZSH as a prompt
autoload -U promptinit; promptinit
prompt typewritten

export PATH="$PATH:/opt/nvim-linux64/bin"
alias t=tmux

alias rm=trash
