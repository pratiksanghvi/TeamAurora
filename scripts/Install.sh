echo 'Installing Data Ingestor' 
cd '/home/ec2-user/DataIngestor'
sudo mvn -e clean install >> /var/log/DataIngestor.log
cp reqDir/*.war /usr/local/tomcat7/apache-tomcat-7.0.72/webapps/ >> /var/log/tomcat.log
cd  /usr/local/tomcat7/apache-tomcat-7.0.72

sudo sh ./bin/startup.sh >> /var/log/tomcat.log 2>&1 &
