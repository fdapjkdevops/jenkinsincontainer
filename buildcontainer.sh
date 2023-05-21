docker create --name='jenkinsdocker' -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/fedavis/dockervol/jenkins:/var/jenkins_home jenkinsdocker
