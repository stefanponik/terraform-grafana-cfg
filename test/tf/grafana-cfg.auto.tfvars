###############
# ENV Variables
###############

grf_url = "http://grafana:3000"

grf_user     = "admin"
grf_password = "admin"


grf_folders = [
  "Docker-Infra",
]

grf_dashboards = [
  { Docker-Infra = "./Docker-Host-Overview_test.json" },
]



