sudo apt-get update
sudo apt-get install openjdk-6-jdk openjdk-7-jdk icedtea-6-plugin icedtea-7-plugin
echo "Switching to openjdk6"
sudo update-java-alternatives -s java-1.6.0-openjdk-amd64
JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
echo "javac version is"
javac -version
echo "Switching to openjdk7"
sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
echo "javac version is"
javac -version
echo "-----------------------"
echo "Switching to oracle-jdk7"
sudo update-java-alternatives -s java-7-oracle
JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::")
echo "JAVA_HOME is"
echo $JAVA_HOME
echo "java version is"
java -version
echo "javac version is"
javac -version

exit "Testing build failed"
