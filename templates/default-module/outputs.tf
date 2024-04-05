output "resource_group_id" {
  value       = azurerm_resource_group.this.id
  description = "ID of the resource group"
}
output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Name of the resource group"
}
