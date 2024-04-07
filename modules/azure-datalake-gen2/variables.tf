variable "name" {
  type        = string
  description = "The name of the storage account"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}
variable "location" {
  type        = string
  description = "The location of the storage account"
}
variable "account_tier" {
  type        = string
  description = "The tier of the storage account"
  default     = "Standard"
}
variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account"
  default     = "LRS"
}
variable "access_tier" {
  type        = string
  description = "The access tier of the storage account"
  default     = "Hot"
}
variable "sftp_enabled" {
  type        = bool
  description = "Enable SFTP on the storage account"
  default     = false
}
variable "allow_nested_items_to_be_public" {
  type        = bool
  description = "Allow nested items to be public"
  default     = false
}
variable "public_network_access_enabled" {
  type        = bool
  description = "Allow public network access to the storage account"
  default     = false
}
variable "contributors" {
  type        = list(string)
  description = "A list of object ids to assign as 'Storage Blob Data Contributor' to the storage account"
  default     = []

}
variable "readers" {
  type        = list(string)
  description = "A list of object ids to assign as 'Storage Blob Data Reader' to the storage account"
  default     = []
}
variable "delete_retention_days" {
  type        = number
  description = "The number of days to retain deleted blobs and containers"
  default     = 14
}
variable "container_delete_retention_days" {
  type        = number
  description = "The number of days to retain deleted containers"
  default     = 7
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}