#!/bin/bash

apt-get update
# 1. Install and configure the necessary dependencies 
apt-get install -y curl openssh-server ca-certificates postfix

# 2. Add the GitLab package server and install the package 
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get install -y gitlab-ce

# 3. Configure and start GitLab
gitlab-ctl reconfigure
