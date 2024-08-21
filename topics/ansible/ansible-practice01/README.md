## Structure

```bash
.
├── Dockerfile
├── README.md
├── ansible.cfg
├── inventory
│   └── hosts.ini
├── playbooks
│   ├── site.yml
│   └── tasks
│       ├── common.yml
│       ├── install_docker.yml
│       ├── start_containers.yml
│       └── verify.yml
├── requirements.yml
└── roles
    └── docker
        ├── tasks
        │   └── main.yml
        └── templates
            └── docker-compose.yml.j2
```

## Run the practice01

```bash
cd topics/ansible/ansible-practice01

docker build -t ansible-controller .

docker run -v $(pwd):/ansible ansible-controller
```
