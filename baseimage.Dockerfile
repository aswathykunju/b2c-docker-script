FROM openjdk:8  
RUN  apt-get update
RUN  apt-get install nginx  -y
RUN  apt-get install -y git
RUN  apt install postgresql postgresql-contrib -y
RUN \
    cd /usr/local && \
    curl -L https://services.gradle.org/distributions/gradle-4.7-bin.zip -o gradle-4.7-bin.zip && \
    unzip gradle-4.7-bin.zip && \
    rm gradle-4.7-bin.zip
ENV GRADLE_HOME=/usr/local/gradle-4.7
ENV PATH=$PATH:$GRADLE_HOME/bin 
CMD ["nginx", "-g", "daemon off;"]
