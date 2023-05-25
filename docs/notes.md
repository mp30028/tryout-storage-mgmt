### Instructions for running the MySql-Server container and connecting to db with MySql-CLI

1. Start up MySql
 - `cd` into the `../mysql-setup` directory and run `docker compose up`
 
2. Start up an Ubuntu container with MySql-Client already installed in detached mode
 - `cd` into `../mysql-cli` directory and run `docker compose up -d`
 
3. Attach to the `test-db-cli` container that should be running after the previous command
 - `docker attach test-db-cli`
 This should take you to the bash shell in the container.
 
4. Start the MySql-Client available in the `test-db-cli` container and connect to the db started in the first step.
 - `mysql -u root -pr007*Password --host=test-db --port=43306`
 
 
### Points to note
**MySql-Server configs**<br/>
MySql-Server is configured and started using `docker compose`. The configs should be stored in a `.env` file. There is a sample file provided named `sample.env`. For testing purposes update this file with config appropriate for where it is being run then rename and save it as `.env`. Then follow the above instructions.


### Web Resources
Understand how environment variables, args and variables can be used in Docker, Dockerfile and docker compose

[Understanding Docker Build Args, Environment Variables and Docker Compose Variables](https://vsupalov.com/docker-env-vars/)

[Docker ARG, ENV and .env - a Complete Guide](https://vsupalov.com/docker-arg-env-variable-guide/)