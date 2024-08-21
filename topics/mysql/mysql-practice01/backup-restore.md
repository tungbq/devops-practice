## Prerequisite

- Deploy and connect to MYSQL DB document: [setup](../setup/)

## Backup the Database

- To create a backup of the exampledb database:

```bash
docker exec mysql_container mysqldump -u root -p'rootpassword' exampledb > backup.sql

# [Warning] Using a password on the command line interface can be insecure. Just for PoC - Not recommended for the prod usage
```

This will create a backup.sql file in your project directory.

## Restore the Database

To restore the database from a backup:

```bash
docker exec -i mysql_container mysql -u root -p'rootpassword' exampledb < backup.sql

# [Warning] Using a password on the command line interface can be insecure. Just for PoC - Not recommended for the prod usage
```
