
#########
# Backend
#########
terraform {
  backend "local" {
    path = ".terraform/tf-state/terraform.tfstate"
  }
  required_version = ">= 0.12.0"

  required_providers {
    grafana = ">= 1.5"
  }
}

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
  source         = "../../../../terraform-grafana-cfg"
  grf_folders    = var.grf_folders
  grf_dashboards = var.grf_dashboards
}
