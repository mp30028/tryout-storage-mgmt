## Project aim
Demonstrate provisioning and use of remote storage in docker containers

### Overview
![overview](docs/diagrams/images/01-overview.png)

### Approach outline
1. Create a docker compose project to bring up a MySql database
2. Configure the compose project to put the MySql data files in a docker volume so that the data persists beyond the life of the MySql containers
3. Create GitHub workflows to orchestrate creating docker volumes based on settings stored somewhere securely on remote
4. Extend the workflow to orchestrate deploying and starting MySql on remote using the docker volumes created by the previous workflow


### Addtional notes and instructions
[Addtional notes and instructions](https://github.com/mp30028/tryout-storage-mgmt/blob/main/docs/notes.md)