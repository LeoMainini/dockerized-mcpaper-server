FROM debian:11
RUN apt-get update && apt-get upgrade -y
RUN apt-get install software-properties-common ca-certificates apt-transport-https gnupg curl wget -y
RUN curl https://apt.corretto.aws/corretto.key | apt-key add -
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'
RUN apt-get update
RUN apt-get install -y java-17-amazon-corretto-jdk libxi6 libxtst6 libxrender1
COPY tools/properties server.properties
COPY tools/entrypoint.sh entrypoint.sh	
ENTRYPOINT ["sh", "entrypoint.sh"]
CMD ["java", "-Xms2G", "-Xmx2G", "-jar", "paper.jar", "--nogui"]
#CMD ["sleep", "infinity"]
