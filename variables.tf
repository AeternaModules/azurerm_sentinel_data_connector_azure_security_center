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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_azure_security_center's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: subscription_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

