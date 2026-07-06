output "sentinel_data_connector_azure_security_centers" {
  description = "All sentinel_data_connector_azure_security_center resources"
  value       = azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers
}
output "sentinel_data_connector_azure_security_centers_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_data_connector_azure_security_centers"
  value       = [for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : v.log_analytics_workspace_id]
}
output "sentinel_data_connector_azure_security_centers_name" {
  description = "List of name values across all sentinel_data_connector_azure_security_centers"
  value       = [for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : v.name]
}
output "sentinel_data_connector_azure_security_centers_subscription_id" {
  description = "List of subscription_id values across all sentinel_data_connector_azure_security_centers"
  value       = [for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : v.subscription_id]
}

