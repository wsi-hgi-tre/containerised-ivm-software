# Containerised IVM Software Stack

Build a Docker container that mirrors the IVM's software stack. This is
useful for providing a homogeneous environment in both the IVM and
pipeline runner as well as allowing quicker testing of changes to the
software deployment (i.e., before pushing it to Google Cloud and "hoping
it works").

## Build Instructions

    git clone --recursive https://github.com/wsi-hgi-tre/containerised-ivm-software.git
    cd containerised-ivm-software
    docker build -t ivm-software .

**Note** The Ansible run will take some time to complete; potentially
several hours, depending on how much resource is available to the
container.

**Note** The build process requires a non-trivial amount of memory; you
may need to increase the resources available to your Docker containers
for the build to succeed.

## Synchronising

The IVM's software stack is defined as IaC and will drift from this
repository. The submodule is set to track the `sanger-production`
branch, but it should be updated whenever the stack is updated and
pushed.

    git submodule update --init --remote
