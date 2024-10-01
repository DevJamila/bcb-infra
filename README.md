# bcb-infra
This repository contains all you need to run the bcb project at once.

## Services

### BCB-POSTGRES-DB
Docker container with pre configured postgres and some data inserted.

### BCB-SMS-SIMULATOR
A simple application to simulate the SMS Server.

### BCB-CORE-APP
The main application with endpoint to send messages and also to manage the customers and their plans.

## Build and Run
After clone all this repositories, run maven commands to build the Java projects.

``` mvn clean install ```

Use the docker-compose.yaml file in this directory to build and up all you need for the project at once.

Build the docker images:

``` docker-compose build ```

Run the containers:

``` docker-compose up -d ```

## Test and Have Fun
Now the project is running you can use the `Big Chat Brasil.postman_collection.json` to explore the API.
