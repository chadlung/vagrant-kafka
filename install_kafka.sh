sudo apt-get update
sudo apt-get install openjdk-7-jdk -y
echo "Downloading Kafka, please wait..."
wget -q http://apache.mirrors.hoobly.com/kafka/0.8.2.1/kafka_2.10-0.8.2.1.tgz
echo "Download complete, finishing install"
tar -zxvf kafka_2.10-0.8.2.1.tgz
cd kafka_2.10-0.8.2.1/
echo "host.name=192.168.33.10" >> config/server.properties
bin/zookeeper-server-start.sh config/zookeeper.properties &
bin/kafka-server-start.sh config/server.properties &
echo "Installation complete!"
