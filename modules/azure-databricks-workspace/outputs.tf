output "workspace_id" {
  value       = azurerm_databricks_workspace.this.workspace_id
  description = "ID of the Databricks workspace"
}
output "workspace_name" {
  value       = azurerm_databricks_workspace.this.name
  description = "Name of the Databricks workspace"
}
output "workspace_url" {
  value       = azurerm_databricks_workspace.this.workspace_url
  description = "URL of the Databricks workspace"
}
output "resource_group_id" {
  value       = azurerm_resource_group.this.id
  description = "ID of the resource group"
}
output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Name of the resource group"
}
output "access_connector_id" {
  value       = azurerm_databricks_access_connector.this.id
  description = "ID of the access connector. E.g. /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-databricks-rg/providers/Microsoft.Databricks/workspaces/databricks-workspace/accessControl/00000000-0000-0000-0000-000000000000"
}
output "access_connector_name" {
  value       = azurerm_databricks_access_connector.this.name
  description = "Name of the access connector"
}
output "access_connector_principal_id" {
  value       = azurerm_databricks_access_connector.this.identity[0].principal_id
  description = "Principal ID of the managed identity for the access connector"
}
output "vnet_id" {
  value       = azurerm_virtual_network.this.id
  description = "ID of the new Vnet"
}
output "vnet_name" {
  value       = azurerm_virtual_network.this.name
  description = "Name of the Vnet"
}
output "nsg_id" {
  value       = azurerm_network_security_group.this.id
  description = "ID of the new NSG"
}
output "nsg_name" {
  value       = azurerm_network_security_group.this.name
  description = "Name of the NSG"
}
output "private_subnet_id" {
  value       = azurerm_subnet.private.id
  description = "ID of the private subnet"
}
output "private_subnet_name" {
  value       = azurerm_subnet.private.name
  description = "Name of the private subnet"
}
output "public_subnet_id" {
  value       = azurerm_subnet.public.id
  description = "ID of the public subnet"
}
output "public_subnet_name" {
  value       = azurerm_subnet.public.name
  description = "Name of the public subnet"
}