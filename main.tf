resource "okta_push_group" "push_groups" {
  for_each = var.push_groups

  app_id                         = each.value.app_id
  source_group_id                = each.value.source_group_id
  app_config                     = each.value.app_config
  delete_target_group_on_destroy = each.value.delete_target_group_on_destroy
  status                         = each.value.status
  target_group_id                = each.value.target_group_id
  target_group_name              = each.value.target_group_name
}

