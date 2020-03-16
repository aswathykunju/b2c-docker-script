FROM attb2c-base-image
WORKDIR /usr/app
RUN git clone https://ranjithbcove:dbeb2a80708b37132aae6868dd3d3cf7d4bfc141@github.com/ranjithbcove/att-root-b2c.git
COPY ./app/properties/application.properties /usr/app/att-root-b2c/config/application.properties
WORKDIR /usr/app/att-root-b2c
RUN gradle build
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "build/libs/root-b2c-3.11.1.jar"]
