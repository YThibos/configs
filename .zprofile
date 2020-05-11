# Proxy vars
export ALL_PROXY=http://proxyusr.fediap.be:8080
export FTP_PROXY=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export HTTP_PROXY=$ALL_PROXY
export NO_PROXY="onprvp.fgov.be,sfpd.fgov.be,localhost,127.0.0.1"

# Paths
export DEV=/home/thiby/development
export JAVA_HOME=$DEV/tools/jdk1.8.0_162
export MAVEN_HOME=/usr/share/maven
export M2_HOME=/usr/share/maven/bin
export M2_REPO=$DEV/mavenRepository

export JBOSS_HOME=$DEV/apps/JBossTheseos
export THESEOS_HOME=$DEV/theseosHome

export TRUNK=$DEV/sources/theseos
export MPBL=$DEV/sources/mypension-business-layer
export CURRENT_BRANCH=$TRUNK


export SCRIPTS=$DEV/scripts
export MISC=$SCRIPTS/commandline-utilities

export GLUE=$DEV/apps/glue
export GLUE_CONFIG=$GLUE/glue.config
export GLUE_RESULTS=$GLUE/results
export GLUESCRIPTS=$DEV/sources/glue

export MAVEN_OPTS="-Dfile.encoding=ISO-8859-1"

export WINEARCH=win32
export WINEPREFIX=~/.win32