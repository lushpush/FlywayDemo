# Flyway Migration (Super migration steps) 
 - Clone this repository using command 
    > `git clone <<repolink>`


## Installation:
 - ### Flyway docker local Setup

    docker-compose.yml
    ``` docker yml
    version: '3'
    services:
    flyway:
        image: flyway/flyway
        command: -url=jdbc:mysql://db -schemas=myschema -user=root -password=P@ssw0rd -connectRetries=60 migrate
        volumes:
        - .:/flyway/sql
        - .:/flyway/drivers
    ```

    start dockerized sql server 
    ``` bash 
    docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourStrong@Passw0rd" \
   -p 5433:5433 --name sql1 -h sql1 \
   -d mcr.microsoft.com/mssql/server:2019-latest
    ```
- ### Windows download 
   * [fly way commanline download link](https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/7.0.2/flyway-commandline-7.0.2-windows-x64.zip)
    * choco command  
        > `choco install flyway.commandline`
    * winget comand
        > `winget  flyway`


### References :
- [Flyway offical website](https://flywaydb.org/)
- [Sqlserver JDBC driver](https://docs.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-ver15)
- [Flyway naming pattern](https://flywaydb.org/documentation/concepts/migrations.html)
- [Sql based Migration](https://flywaydb.org/documentation/concepts/migrations#sql-based-migrations)
# FlywayDemo
