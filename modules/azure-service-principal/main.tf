resource "azuread_application" "this" {
  display_name = var.name
  tags         = [for key, value in var.tags : "${key}=${value}"]
}
resource "azuread_service_principal" "this" {
  client_id = azuread_application.this.client_id
}
resource "azuread_service_principal_password" "this" {
  service_principal_id = azuread_service_principal.this.id
}
resource "azurerm_role_assignment" "this" {
  for_each = { for assignment in var.role_assignments : "${assignment.scope}-${assignment.role_definition_name}" => assignment }

  scope                = each.value.scope
  role_definition_name = each.value.role_definition_name
  principal_id         = azuread_service_principal.this.id
}