variable "metastore_id" {
  type        = string
  description = "The ID of the Metastore"
}
variable "workspace_id" {
  type        = string
  description = "The ID of the Workspace"
}
variable "metastore_storage_account_id" {
  type        = string
  description = "The ID of the Metastore Storage Account"
}
variable "access_connector_principal_id" {
  type        = string
  description = "The Principal ID of the Workspace Access Connector"
}
variable "access_connector_id" {
  type        = string
  description = "The ID of the Workspace Access Connector"
}
variable "access_connector_name" {
  type        = string
  description = "The Name of the Workspace Access Connector"
}
variable "default_catalog_name" {
  type        = string
  description = "The default catalog name"
  default     = "hive_metastore"
}