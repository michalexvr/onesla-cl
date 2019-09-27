# onesla-cl
Is a little assets and services manager platform

### Implementation

Clone the repo
```sh
$ git clone https://github.com/michalexvr/onesla-cl.git
```
give write permissions to storage directory
```sh
chmod -R o+w storage
```
Modify the environment file for the DB configuration (if the server is Posgres, to development purposes the settings are the following):
```sh
DB_CONNECTION=pgsql
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=DB_NAME
DB_USERNAME=DB_USER
DB_PASSWORD=DB_PASSWORD
```
=======
