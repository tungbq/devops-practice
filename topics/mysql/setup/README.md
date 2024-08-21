## Deploy

```bash
cd topics/mysql/setup

docker-compose up -d
```

## Connect

- To connect to the MySQL database, you can use a MySQL client or connect from within the container:

```bash
docker exec -it mysql_container mysql -u exampleuser -p
# Enter 'examplepassword' when prompted.
```

- Alternatively, connect using a MySQL client from your host:

```bash
mysql -h 127.0.0.1 -P 3306 -u exampleuser -p
# Enter 'examplepassword' when prompted.
```
