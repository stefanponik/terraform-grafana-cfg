###############
# ENV Variables
###############

grf_url = "http://localhost:3000"

grf_user     = "admin"
grf_password = "Password1"

# grf_api_key = "eyJrIjoieHdJQnpGU1h2NGp3dFNzbERhS0dncmx5RVRBNEdsMFgiLCJuIjoiYWRtaW4iLCJpZCI6MX0="

grf_folders = [
  "Docker-Infra",
  "Monitoring-Infra",
]

grf_dashboards = [
  { Docker-Infra = "../../../../grafana-dashboards/docker-dashboards/Docker-overview-type-2.json" },
  { Docker-Infra = "../../../../grafana-dashboards/docker-dashboards/InfluxDB-Docker-type-2.json" },
  { Monitoring-Infra = "../../../../grafana-dashboards/docker-dashboards/Docker-overview-type-2.json" },
  { Monitoring-Infra = "../../../../grafana-dashboards/docker-dashboards/InfluxDB-Docker-type-2.json" },
]



