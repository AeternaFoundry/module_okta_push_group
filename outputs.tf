output "push_groups_id" {
  description = "Map of id values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.id }
}
output "push_groups_app_config" {
  description = "Map of app_config values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.app_config }
}
output "push_groups_app_id" {
  description = "Map of app_id values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.app_id }
}
output "push_groups_delete_target_group_on_destroy" {
  description = "Map of delete_target_group_on_destroy values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.delete_target_group_on_destroy }
}
output "push_groups_source_group_id" {
  description = "Map of source_group_id values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.source_group_id }
}
output "push_groups_status" {
  description = "Map of status values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.status }
}
output "push_groups_target_group_id" {
  description = "Map of target_group_id values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.target_group_id }
}
output "push_groups_target_group_name" {
  description = "Map of target_group_name values across all push_groups, keyed the same as var.push_groups"
  value       = { for k, v in okta_push_group.push_groups : k => v.target_group_name }
}

