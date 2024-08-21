# Setup Jenkins

## With docker compose

- Run

```bash
cd topics/jenkins/setup

docker-compose up -d
```

- Open your browser and go to http://localhost:8020. You should see the Jenkins setup page.

- 
```bash
docker exec jenkins_controller_practice cat /var/jenkins_home/secrets/initialAdminPassword

# 1d86cf0e5fe14608970274adb54ec3ac
```