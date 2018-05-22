#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which redis-server
# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm redis-server --version
# Verify the server information.
docker exec --tty ${container_id} env TERM=xterm redis-cli info server | egrep "process_id|tcp_port|config_file"