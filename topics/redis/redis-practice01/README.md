# Create and access the Redis cluster

This practice sample helps you learn how to set up and access a redis cluster with docker compose

## Steps to Create the Redis Cluster

- Bring up the Redis nodes:

```bash
cd topics/redis/redis-practice01
docker-compose up -d
```

- Check that all Redis containers are running:

```bash
docker ps
```

## Create the Redis Cluster:

We will need to execute the following command from one of the Redis nodes, connecting the 4 nodes to form the cluster. In this example, we’ll connect from redis-node-1.

- Enter the Redis container:

```bash
docker exec -it <container_name_of_redis-node-1> sh
```

- Then run the following Redis CLI command to create the cluster:

```bash
redis-cli --cluster create 172.18.0.2:6379 172.18.0.3:6379 172.18.0.4:6379 172.18.0.5:6379 172.18.0.6:6379 172.18.0.7:6379 --cluster-replicas 1

# This command will create a cluster with 3 master nodes and 3 replica nodes, where each master will have one replica.
# >>> Performing hash slots allocation on 6 nodes...
# Master[0] -> Slots 0 - 5460
# Master[1] -> Slots 5461 - 10922
# Master[2] -> Slots 10923 - 16383
# Adding replica 172.18.0.6:6379 to 172.18.0.2:6379
# Adding replica 172.18.0.7:6379 to 172.18.0.3:6379
# Adding replica 172.18.0.5:6379 to 172.18.0.4:6379
```

- Check cluster status:
  After the cluster is created, you can check its status by connecting to any Redis node and running:

```bash
redis-cli -c -h 172.18.0.2 -p 6379 cluster nodes
```

## Example of Using the Redis Cluster

Once the cluster is set up, you can use the following steps to interact with it:

- Connect to the Redis CLI:

```bash
redis-cli -c -h 172.18.0.2 -p 6379
```

- Add key-value pairs:

```bash
SET key1 "value1"
```

- Retrieve the value:

```bash
GET key1
# Check cluster key distribution: Redis will automatically distribute the keys across the nodes in the cluster.
```
