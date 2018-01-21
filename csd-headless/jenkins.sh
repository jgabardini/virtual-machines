echo "deb http://http.debian.net/debian jessie-backports main" | \
      sudo tee --append /etc/apt/sources.list.d/jessie-backports.list > /dev/null
sudo apt-get update
sudo apt-get --yes --force-yes install -t jessie-backports openjdk-8-jre
sudo update-java-alternatives -s java-1.8.0-openjdk-amd64

curl -L -o jenkins.war http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Configurar Jenkins localhost:8080
# Admin psw: /home/vagrant/.jenkins/secrets/initialAdminPassword
