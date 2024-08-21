FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-apt \
    software-properties-common \
    && apt-get clean

# Install Ansible
RUN pip3 install ansible

# Copy the Ansible files
COPY . /ansible

# Set working directory
WORKDIR /ansible

# Entry point
CMD ["ansible-playbook", "playbooks/site.yml"]
