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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_azure_security_center's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
}

