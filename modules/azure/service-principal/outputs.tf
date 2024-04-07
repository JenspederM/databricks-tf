output "service_principal_client_id" {
  value       = azuread_application.this.application_id
  description = "The client ID of the Service Principal"
}
output "service_principal_object_id" {
  value       = azuread_service_principal.this.object_id
  description = "The object ID of the Service Principal"
}
output "service_principal_password" {
  value       = azuread_service_principal_password.this.value
  description = "The password of the Service Principal"
}