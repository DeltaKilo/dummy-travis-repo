sudo apt-get -qq update
mvn --version
sudo apt-get -qq install openjdk-6-jdk openjdk-7-jdk icedtea-6-plugin icedtea-7-plugin maven
sudo apt-get dist-upgrade
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
echo "Switching to oracle-jdk7"
sudo update-java-alternatives -s java-7-oracle
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
javac -version

exit "0"
