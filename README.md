# Containerised IVM Software Stack

Build a Docker container that mirrors the IVM's software stack. This is
useful for providing a homogeneous environment in both the IVM and
pipeline runner as well as allowing quicker testing of changes to the
software deployment (i.e., before pushing it to Google Cloud and "hoping
it works").

## Build Instructions

    git clone --recursive https://github.com/wsi-hgi-tre/containerised-ivm-software.git
    cd containerised-ivm-software
    make

This will create a container named `ivm-software`, tagged with the
latest commit date of the Finngen codebase.

**Note** The Ansible run will take some time to complete; potentially
several hours, depending on how much resource is available to the
container.

**Note** The build process requires a non-trivial amount of memory; you
may need to increase the resources available to your Docker containers,
in virtualised environments (e.g., macOS), for the build to succeed.

## Synchronising

The IVM's software stack is defined as IaC and will drift from this
repository. The submodule is set to track the `sanger-production`
branch, but it should be updated whenever the stack is updated and
pushed.

    git submodule update --init --remote
