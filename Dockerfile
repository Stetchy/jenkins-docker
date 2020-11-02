FROM jenkins/jenkins:lts

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY plugins.txt /usr/share/lib/plugins.txt
COPY jcasc.yml /var/lib/jenkins/jcasc.yml

RUN jenkins-plugin-cli -f /usr/share/lib/plugins.txt