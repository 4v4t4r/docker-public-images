#!/bin/bash
set -e

/bootstrap/entrypoint.sh &
/usr/sbin/sshd -D
