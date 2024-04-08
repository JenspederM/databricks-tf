variable "name" {
  type        = string
  description = "The name of the module"
}
variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}
variable "force_destroy" {
  type        = bool
  description = "Whether to force destroy the metastore"
  default     = false
}
variable "location" {
  type        = string
  description = "The region where the resources will be deployed"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the resources"
  default     = {}
}