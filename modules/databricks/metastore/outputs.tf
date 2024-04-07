
output "id" {
  value       = databricks_metastore.this.id
  description = "ID of the Databricks Metastore"
}
output "storage_account_id" {
  value       = azurerm_storage_container.this.id
  description = "I"
}
output "resource_group_id" {
  value       = azurerm_resource_group.this.id
  description = "ID of the resource group"
}
output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Name of the resource group"
}
