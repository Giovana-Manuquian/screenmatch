# Usar uma imagem base com JDK 17
FROM openjdk:17-jdk-alpine

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o arquivo JAR gerado para dentro do container
COPY target/screenmatch-0.0.1-SNAPSHOT.jar /app/screenmatch.jar

# Expor a porta 8081, onde o aplicativo Spring Boot rodará
EXPOSE 8081

# Comando para rodar o aplicativo
ENTRYPOINT ["java", "-jar", "/app/screenmatch.jar"]
