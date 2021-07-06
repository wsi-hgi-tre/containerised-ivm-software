FROM debian:buster

# Install latest Ansible and prepare build directory
RUN apt update \
 && apt install -y python3-pip python3-apt \
 && pip3 install ansible \
 && mkdir -p /build

# Copy and run Ansible playbooks locally
COPY finngen-v3/iac/build/ivm/ansible/playbooks /build
COPY inventory /build/
WORKDIR /build
RUN ansible-playbook software.yaml -i inventory
