
###########
# Providers
###########

provider "grafana" {
  url = var.grf_url
  #  auth = "${var.grf_user}:${var.grf_password}"
  auth = var.grf_api_key != "" ? var.grf_api_key : "${var.grf_user}:${var.grf_password}"
}

#########
# Modules 
#########
module "terraform-grafana-cfg" {
  source = "../../../../terraform-grafana-cfg"

  grf_url        = var.grf_url
  grf_user       = var.grf_user
  grf_password   = var.grf_password
  grf_folders    = var.grf_folders
  grf_dashboards = var.grf_dashboards

}
