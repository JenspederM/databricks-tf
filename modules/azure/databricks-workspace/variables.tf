variable "name" {
  type        = string
  description = "The name of the Databricks workspace"
}
variable "location" {
  type        = string
  description = "The region where the resources will be deployed"
}
variable "vnet_name" {
  type        = string
  description = "The name of the virtual network. Defaults to <name>-vnet"
  default     = null
}
variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
}
variable "private_subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the private subnet"
}
variable "public_subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the public subnet"
}
variable "sku" {
  type        = string
  description = "The SKU of the Databricks workspace"
  default     = "standard"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}
