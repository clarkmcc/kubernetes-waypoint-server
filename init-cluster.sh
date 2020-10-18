#!/bin/bash
echo "Bootstrapping cluster (creating namespaces, volumes, etc...)"
cd bootstrap && ./bootstrap.sh && cd ../

echo "Installing cert-manager"
cd cert-manager && ./init-cert-manager.sh && cd ../

echo "Installing nginx"
cd nginx && ./init-nginx.sh && cd ../

echo "Initializing Waypoint (creating statefulset, persistent volume claims, etc...)"
cd waypoint && ./init-waypoint.sh && cd ../

echo "Done!"
