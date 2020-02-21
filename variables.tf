###############
# Variables
###############

variable "grf_url" {
  type = string
}

variable "grf_user" {
  type    = string
  default = ""
}

variable "grf_password" {
  type    = string
  default = ""
}

variable "grf_api_key" {
  type    = string
  default = ""
}

variable "grf_folders" {
  type    = list(string)
  default = []
}

variable "grf_dashboards" {
  type = list(object({
  }))
}
