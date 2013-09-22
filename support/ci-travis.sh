sudo apt-get update
sudo apt-get install icedtea-6-plugin icedtea-7-plugin
echo "Switching to openjdk6"
sudo update-java-alternatives -s java-1.6.0-openjdk-amd64
echo $JAVA_HOME
echo `which java`
echo `which javac`
echo "-----------------------"
echo "Switching to openjdk7"
sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
echo $JAVA_HOME
echo `which java`
echo `which javac`
echo "-----------------------"
echo "Switching to oracle-jdk7"
sudo update-java-alternatives -s java-7-oracle
echo $JAVA_HOME

exit "Testing build failed"
