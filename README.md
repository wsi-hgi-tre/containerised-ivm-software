# Containerised IVM Software Stack

Build a Docker container that mirrors the IVM's software stack.

## Build Instructions

    git clone --recursive https://github.com/wsi-hgi-tre/containerised-ivm-software.git
    cd containerised-ivm-software
    docker build -t ivm-software .

## Synchronising

The IVM's software stack is defined as IaC and will drift from this
repository. The submodule is set to track the `sanger-production`
branch, but it should be updated whenever the stack is updated and
pushed.

    git submodule update --init --remote
