FROM attb2c-base-image
WORKDIR /usr/app
RUN git clone https://ranjithbcove:dbeb2a80708b37132aae6868dd3d3cf7d4bfc141@github.com/ranjithbcove/att-root-b2c.git
RUN pwd
WORKDIR /usr/app/att-root-b2c
RUN gradle build
RUN mv build/libs/*.jar /usr/app/b2c.jar
WORKDIR /usr/app
EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "b2c.jar"]

CMD ["nginx", "-g", "daemon off;"]
