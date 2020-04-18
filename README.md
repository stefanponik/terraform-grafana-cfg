# terraform-grafana-cfg

![](https://github.com/stefanponik/terraform-grafana-cfg/workflows/grafana-cfg/badge.svg)

Module provide programmatic and state aware way to manage InfluxDB databases and policies for InfluxDB OSS running on any platform

# Terraform Requirements 

terraform {

  required_version = ">= 0.12.0"

  required_providers {
    grafana = ">= 1.5"
  }

}

# Terraform module main.tf root module

provider "grafana" {
  url = var.grf_url
  #  auth = "${var.grf_user}:${var.grf_password}"
  auth = var.grf_api_key != "" ? var.grf_api_key : "${var.grf_user}:${var.grf_password}"
}

# Terraform.tfvars
- alternative use xx.auto.tfvars if you want to load them without using CLI flags.  

Example Variables sample for configuration

    grf_folders = [
      "Docker_Infra",
      "Monitoring_Infra",
      "VMware_Infra",
    ]

    grf_dashboards = [
      { Monitoring_Infra = "./dashboards/InfluxDB-Docker-type-1.json" },
      { Docker_Infra = "./dashboards/Docker-overview-type-1.json" },
    ]

# Gotchas 
There cannot be two dashboards with same name. It causes mix match of name and ID for Rest API handling and Terraform.

# Future Work 
- Enhance required functionality

## License

MIT / BSD

# Author Information
Created on March 2020 by Stefan Ponik