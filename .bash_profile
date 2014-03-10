source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs

alias l='ls -h'
alias la='ls -lah'
alias ll='ls -lh'
alias lsd='ls -d */'
alias df='df -h'
alias wdd='history | grep'

export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128M"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`


# The next line updates PATH for the Google Cloud SDK.
export PATH=/Users/kgoudeau/code/google-cloud-sdk/bin:$PATH

export DOCKER_HOST=tcp://localhost:4243

#export GOROOT=/usr/local/go
#export GOPATH=/Users/kgoudeau/go:/Users/kgoudeau/code
