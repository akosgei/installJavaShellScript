 #!/bin/bash

 # Install Homebrew
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

 # Install Cask
 brew tap caskroom/versions

 # Install the latest version of Java
 brew cask install java

 # Export JAVA_HOME
 export JAVA_HOME=$(/usr/libexec/java_home)

 # Export JAVA_HOME everytime we open a login shell.
 echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.bash_profile

 # Verify installation
 java -version
 echo $JAVA_HOME
