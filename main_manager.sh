docker run -d --restart="always" \
  --net="host" \
  --pid="host" \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host

docker run -d --restart="always" -p 9090:9090 --net="host" --pid="host" -v /Prometheus/prometheus.yml:/etc/prometheus/prometheus.yml -v /Prometheus/alert.rules.yml:/alertmanager/alert.rules.yml prom/prometheus

docker run -d --restart="always" --net="host" --pid="host" --name=grafana -p 3000:3000 -v /Grafana/datasource.yml:/etc/grafana/provisioning/datasources/datasource.yml -v /Grafana/node_exporter.json:/etc/grafana/provisioning/dashboards/node_exporter.json -v /Grafana/Docker.json:/etc/grafana/provisioning/dashboards/Docker.json -v /Grafana/cAdvisor.json:/etc/grafana/provisioning/dashboards/cAdvisor.json -v /Grafana/providers.yml:/etc/grafana/provisioning/dashboards/providers.yml  grafana/grafana

docker run -d --restart="always" --net="host" --pid="host" -p 9116:9116 quay.io/prometheus/snmp-exporter

docker run -d --restart="always" --net="host" --pid="host" -p 9093:9093 -v /Alertmanager/alertmanager.yml:/etc/alertmanager/alertmanager.yml prom/alertmanager

docker run --restart="always" --volume=/:/rootfs:ro   --volume=/var/run:/var/run:ro   --volume=/sys:/sys:ro   --volume=/var/lib/docker/:/var/lib/docker:ro   --volume=/dev/disk/:/dev/disk:ro   --publish=8080:8080   --detach=true   --name=cadvisor   --privileged   --device=/dev/kmsg   gcr.io/cadvisor/cadvisor:v0.47.2


