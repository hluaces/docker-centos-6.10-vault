# docker-centos-6.10-vault

CentOS 6 [reached its EOL](https://wiki.centos.org/About/Product) on November 30th, 2020.

When doing so, the main repositories moved its packages to [the vault repos](https://vault.centos.org/centos/6.10/).

This caused [the official centos:6 Docker image](https://hub.docker.com/_/centos) to start failing when trying to update/install packages via `yum`.

This Docker image solves this issue by removing the original repositories and replacing them with their vaulted version.

The purpose of it is to prevent old pipelines that needed CentOS 6 from failing if they need to install any package.
