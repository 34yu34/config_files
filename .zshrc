# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/billy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


function ecole {
  cd ~/ecole/session9/$1
}
compdef _ecole ecole
function _ecole {
  _files -/ -W"/home/billy/ecole/session9"
}

function repo {
  cd ~/repositories/$1
}
compdef _repo repo
function _repo {
  _files -/ -W"/home/billy/repositories"
}

function playground {
  cd ~/playground/$1
}
compdef _playground playground
function _repo {
  _files -/ -W"/home/billy/playground"
}

function py {
  if [ "$#" -eq 1 ]; then
    python3.7 $@
  else
    python3.7 main.py
  fi
}

compdef _py py
function _py {
  _path_files -g "**/*.py" -F "**/__init__.py"
}

function rb {
  if [ "$#" -eq 1 ]; then
    ruby $@
  else
    ruby main.rb
  fi
}

compdef _rb rb
function _rb {
  _path_files -g"**/*.rb"
}

alias lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gap="git add -N . && git add -p"
alias gk="gitk --all"
alias gc="git commit -m"

alias zshconfig="code ~/.zshrc"
alias pathconfig="code ~/.profile"
alias mil="cd ~/Documents/militaire"
#alias repo="cd ~/repositories"
alias atompack="cd ~/.atom/packages"
alias projet="cd ~/ecole/log3900/projet"

alias horaire="nautilus ~/ecole/horaire &"
alias file="nautilus . &"
alias doc="nautilus ~/repositories/doc &"

alias copyTitle="cp ~/ecole/test/latex/titlepage.sty . & mkdir image & cp ~/ecole/test/latex/image/university.png ./image"
alias math="cd /usr/local/MATLAB/R2017a/bin && ./matlab"
alias electric="java -jar ~/ecole/inf1600/electric/electric.jar &"
alias umlet="java -jar ~/umlet/umlet.jar &"
alias untar="tar -zxvf"
alias plantuml="java -jar ~/plantuml/plantuml.jar &"
alias eclipse="/home/billy/eclipse/java-2018-092/eclipse/eclipse"
alias postman='gnome-terminal -e "/home/billy/app/Postman/Postman"'
alias socketiotester='gnome-terminal -e "/home/billy/app/socket-io-tester-linux-x64/socket-io-tester"'

alias chrome="google-chrome"
alias rubydoc="google-chrome ~/repositories/doc/rubyDoc/*.html"
alias gosudoc="google-chrome ~/repositories/doc/GosuDoc/*.html"

alias dbload="rails db:drop &&rails db:schema:load &&rails db:seed"
alias pass="~/passwordgen/passwordhasher"
alias rubyc="~/repositories/rubyc/rubyc"
alias pypip="python3.7 -m pip"
alias jupyter-notebook="~/.local/bin/jupyter-notebook --no-browser"

# For special purpose of WSL
export DISPLAY=:0

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
