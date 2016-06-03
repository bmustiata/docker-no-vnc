#!/usr/bin/env bash

#
# WebSockify proxying of the port.
#
websockify --web=/home/raptor/novnc/ 8081 vnc:$VNC_PORT

