echo "Switching to openjdk6"
sudo update-java-alternatives -s java-1.6.0-openjdk-amd64
echo $JAVA_HOME
echo "Switching to openjdk7"
sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
echo $JAVA_HOME
echo "Switching to oracle-jdk7"
sudo update-java-alternatives -s java-7-oracle
echo $JAVA_HOME

exit "Testing build failed"
