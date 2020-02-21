#########
# Outputs
#########

# output "all_grafana_folders_info" {
#   value = grafana_folder.folder_collection
# }

output "deployed_grafana_folders" {
  value = grafana_folder.folder_collection.*.title
}
