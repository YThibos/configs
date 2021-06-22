# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/thiby/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
export PS1="[\$(date +%H:%M:%S)] $PS1"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.ISO-8859-1

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

# Add custom stuff to path
PATH=$SCRIPTS:$MISC:$PATH

# commandline-utils
source $MISC/_projectListCompletezsh

# Maven bash completion
. $SCRIPTS/maven_bash_completion.bash

# shell exports only
export JBOSS_HOME="$DEV/apps/JBossTheseos"

################
#    ALIASES   #
################

alias pauth="$DEV/scripts/proxy-auth"

alias java8="export JAVA_HOME='/home/thiby/development/tools/jdk1.8.0_162'"
alias java11="export JAVA_HOME='/home/thiby/development/tools/jdk11'"

alias t="cd $TRUNK"
alias bl="cd $MPBL"
alias g="cd $GLUESCRIPTS"
alias ddit="cd $DEV/temp/integrationTests/DataDrivenIntegrationTests"
alias juit="cd $DEV/temp/integrationTests/JUnitIntegrationTests"
alias tbit="cd $DEV/temp/integrationTests/TestBenchIntegrationTests"

alias treact="treactor.sh"
alias blreact="blreactor.sh"
alias tdep="deployTheseos.sh"
alias bldep="deployBusinessLayer.sh"
alias rt="refreshTheseos.sh"
alias rbl="refreshBL.sh"

# Green laziness
export gds=green-develop-SNAPSHOT
alias gtreact="treactor $gds"
alias gblreact="blreactor $gds"
alias gtdep="deployTheseos.sh $gds"
alias gbldep="deployBusinessLayer.sh $gds"

alias pull="git stash && git pull && git stash pop"
alias shhh="systemctl suspend -i"
alias memRatio="memUsageRatio.sh"
alias vpnConnect="vpnConnect.sh"
alias swapflush="sudo swapoff -a && sudo swapon -a"

alias greenSnapshot='find -name "pom.xml" -print0 | xargs -0 sed -r '"'"'s/(version>develop-[0-9\.]+)-SNAPSHOT/green-\1-SNAPSHOT/g'"'"' -bi'

alias glueV4='
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=PMRest/BMD_Orchestration &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=PMRest/BMD_RestCalcul &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=PMRest/OtherTests &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=PMRest/SoapTests &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=simmp &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=myCareer &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/A75 &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/BCIBIO &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/FAMILY &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/JustifCareerBlock &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/JustifOtherBlocks &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/JustifRefusals &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/MIXCAR &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/Notification &&
mvn glue:ts -Dcolors=true -DxmlResults=false -DdbResults=false -DpoolSize=3 -Denvironment=thiby -Dbranch=green-develop -Dtestsuite=V43Rest/Others
' 


###############
#  FUNCTIONS  #
###############

smokeTests() { 
	mvn clean glue:ts -U -Dcolors=true -DmaxScriptRuntime=800000 -DxmlResults=false -DdbResults=false -DpoolSize=2 -Dgroup=Green -Denvironment=$1 -Dbranch=$2 -Dtestsuite=smokeTest ;
}
glueSuite() { 
	if [ "$#" -gt 0 ]
	then
		mvn clean glue:ts -U -Dcolors=true -DmaxScriptRuntime=800000 -DxmlResults=false -DdbResults=false -DpoolSize=2 -Dgroup=Green -Denvironment=$1 -Dbranch=$2 -Dtestsuite=$3 ;
	else 
		echo "args: environment branch testsuite"
	fi
}

# Other
MAVEN_OPTS="-Dfile.encoding=ISO-8859-1"