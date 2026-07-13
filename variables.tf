variable "sentinel_data_connector_azure_security_centers" {
  description = <<EOT
Map of sentinel_data_connector_azure_security_centers, attributes below
Required:
    - log_analytics_workspace_id
    - name
Optional:
    - subscription_id
EOT

  type = map(object({
    log_analytics_workspace_id = string
    name                       = string
    subscription_id            = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_azure_security_centers : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_azure_security_centers : (
        v.subscription_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.subscription_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

