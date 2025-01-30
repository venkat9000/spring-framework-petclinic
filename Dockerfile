FROM nginx

WORKDIR /app

COPY ./target/*.war /app.war

ENV dev

ENTRYPOINT ["petclinic","-war","/app.war"]

EXPOSE 8080

