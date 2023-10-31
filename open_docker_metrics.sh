touch /etc/docker/daemon.json

echo '{
        "metrics-addr" : "0.0.0.0:9323",
        "experimental" : true
}' >> /etc/docker/daemon.json

sudo systemctl restart docker


