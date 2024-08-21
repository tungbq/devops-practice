## Prerequisite

- Deploy and connect to MYSQL DB document: [setup](../setup/)

## Loading the New SQL Script

- To load the practice02.sql script into your existing MySQL container:

```bash
cd mysql/

docker cp mysql-practice02/practice02.sql mysql_container:/practice02.sql
docker exec -it mysql_container bash -c "mysql -u root -p'rootpassword' exampledb < /practice02.sql"
```

This command copies the practice02.sql file into the running container and then executes it to load the new database schema and data.

## Testing the New SQL Commands

- Connect to MYSQL

```bash
docker exec -it mysql_container mysql -u exampleuser -p

# Enter 'examplepassword' when prompted.
```

- Once you are in the MYSQL container instance, check

```sql
USE exampledb;
SELECT * FROM user_details;

-- Call the Stored Procedure:
CALL GetUsersByDepartment(1);

-- Test the Trigger:
INSERT INTO users (username, email) VALUES ('mike_ross', 'mike@example.com');
SELECT * FROM users WHERE username = 'mike_ross';
```
