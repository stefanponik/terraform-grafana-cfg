###############
# Variables
###############

variable "grf_folders" {
  type    = list(string)
  default = []
}

variable "grf_dashboards" {
  type = list(any)
}
