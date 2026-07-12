output "sentinel_data_connector_azure_security_centers_id" {
  description = "Map of id values across all sentinel_data_connector_azure_security_centers, keyed the same as var.sentinel_data_connector_azure_security_centers"
  value       = { for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : k => v.id }
}
output "sentinel_data_connector_azure_security_centers_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_data_connector_azure_security_centers, keyed the same as var.sentinel_data_connector_azure_security_centers"
  value       = { for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : k => v.log_analytics_workspace_id }
}
output "sentinel_data_connector_azure_security_centers_name" {
  description = "Map of name values across all sentinel_data_connector_azure_security_centers, keyed the same as var.sentinel_data_connector_azure_security_centers"
  value       = { for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : k => v.name }
}
output "sentinel_data_connector_azure_security_centers_subscription_id" {
  description = "Map of subscription_id values across all sentinel_data_connector_azure_security_centers, keyed the same as var.sentinel_data_connector_azure_security_centers"
  value       = { for k, v in azurerm_sentinel_data_connector_azure_security_center.sentinel_data_connector_azure_security_centers : k => v.subscription_id }
}

