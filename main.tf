
#################
# Local Variables
#################

locals {
  grf_folder_counter     = length(var.grf_folders)
  grf_dashboards_counter = length(var.grf_dashboards)
}

# #########
# Resources
# #########

resource "grafana_folder" "folder_collection" {

  count = local.grf_folder_counter

  title = element(var.grf_folders, count.index)

}

resource "grafana_dashboard" "dashboards_in_folders" {

  count = local.grf_dashboards_counter

  folder      = element([for x in grafana_folder.folder_collection : x.id if x.title == keys(element(var.grf_dashboards, count.index))[0]], 0)
  config_json = file(values(element(var.grf_dashboards, count.index))[0])

}

