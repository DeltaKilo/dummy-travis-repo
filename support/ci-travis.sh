sudo apt-get -qq update
sudo apt-get -qq install openjdk-6-jdk openjdk-7-jdk icedtea-6-plugin icedtea-7-plugin
sudo apt-mark hold oracle-java7-installer
sudo apt-get -qq dist-upgrade
mvn --version
echo "Switching to openjdk6"
sudo update-java-alternatives -s java-1.6.0-openjdk-amd64
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
javac -version
echo "Switching to openjdk7"
sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
javac -version
echo "-----------------------"
echo "Switching to oracle-jdk7u25"
sudo update-java-alternatives -s java-7-oracle
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
javac -version
echo "-----------------------"
echo "Updating Oracle JDK to u40"
sudo apt-mark hold oracle-java7-installer
sudo apt-get -qq install oracle-java7-installer
echo "Switching to oracle-jdk7u40"
sudo update-java-alternatives -s java-7-oracle
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
javac -version
echo "-----------------------"

exit "0"
