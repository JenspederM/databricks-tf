variable "name" {
  type        = string
  description = "The name of the module"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the resources will be deployed"
}
variable "location" {
  type        = string
  description = "The region where the resources will be deployed"
}
variable "tenant_id" {
  type        = string
  description = "The tenant ID of the Azure Active Directory"
}
variable "sku_name" {
  type        = string
  description = "The SKU of the Key Vault"
  default     = "standard"
}
variable "purge_protection_enabled" {
  type        = bool
  description = "Enable purge protection on the Key Vault"
  default     = true
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}