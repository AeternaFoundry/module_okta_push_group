output "push_groups_id" {
  description = "Map of id values across all push_groups, keyed the same as var.push_groups except keys with no id are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "push_groups_app_config" {
  description = "Map of app_config values across all push_groups, keyed the same as var.push_groups except keys with no app_config are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.app_config if v.app_config != null && length(v.app_config) > 0 }
}
output "push_groups_app_id" {
  description = "Map of app_id values across all push_groups, keyed the same as var.push_groups except keys with no app_id are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "push_groups_delete_target_group_on_destroy" {
  description = "Map of delete_target_group_on_destroy values across all push_groups, keyed the same as var.push_groups except keys with no delete_target_group_on_destroy are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.delete_target_group_on_destroy if v.delete_target_group_on_destroy != null }
}
output "push_groups_source_group_id" {
  description = "Map of source_group_id values across all push_groups, keyed the same as var.push_groups except keys with no source_group_id are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.source_group_id if v.source_group_id != null && length(v.source_group_id) > 0 }
}
output "push_groups_status" {
  description = "Map of status values across all push_groups, keyed the same as var.push_groups except keys with no status are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.status if v.status != null && length(v.status) > 0 }
}
output "push_groups_target_group_id" {
  description = "Map of target_group_id values across all push_groups, keyed the same as var.push_groups except keys with no target_group_id are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.target_group_id if v.target_group_id != null && length(v.target_group_id) > 0 }
}
output "push_groups_target_group_name" {
  description = "Map of target_group_name values across all push_groups, keyed the same as var.push_groups except keys with no target_group_name are omitted"
  value       = { for k, v in okta_push_group.push_groups : k => v.target_group_name if v.target_group_name != null && length(v.target_group_name) > 0 }
}

