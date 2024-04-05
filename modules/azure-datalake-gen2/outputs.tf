output "resource_group_id" {
  value       = data.azurerm_resource_group.this.id
  description = "ID of the resource group"
}
output "resource_group_name" {
  value       = data.azurerm_resource_group.this.name
  description = "Name of the resource group"
}
output "storage_account" {
  value       = azurerm_storage_account.this
  description = "The created storage account"
}
