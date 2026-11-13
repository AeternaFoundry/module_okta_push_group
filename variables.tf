variable "push_groups" {
  description = <<EOT
Map of push_groups, attributes below
Required:
    - app_id
    - source_group_id
Optional:
    - app_config
    - delete_target_group_on_destroy
    - status
    - target_group_id
    - target_group_name
EOT

  type = map(object({
    app_id                         = string
    source_group_id                = string
    app_config                     = optional(list(any))
    delete_target_group_on_destroy = optional(bool)
    status                         = optional(string)
    target_group_id                = optional(string)
    target_group_name              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.push_groups : (
        v.status == null || (contains(["ACTIVE", "INACTIVE"], v.status))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
}

