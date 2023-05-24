1. Start up MySql
 - `cd` into the `../mysql-setup` directory and run `docker compose up`
 
2. Start up an Ubuntu container with MySql-Client already installed in detached mode
 - `cd` into `../mysql-cli` directory and run `docker compose up -d`
 
3. Attach to the `test-db-cli` container that should be running after the previous command
 - `docker attach test-db-cli`
 This should take you to the bash shell in the container.
 
4. Start the MySql-Client available in the `test-db-cli` container and connect to the db started in the first step.
 - `mysql -u root -pRoot*localhost --host=test-db --port=53306`