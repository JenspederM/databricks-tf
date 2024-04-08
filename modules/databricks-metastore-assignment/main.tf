
resource "databricks_metastore_assignment" "this" {
  metastore_id         = var.metastore_id
  workspace_id         = var.workspace_id
  default_catalog_name = var.default_catalog_name
}
resource "azurerm_role_assignment" "this" {
  scope                = var.metastore_storage_account_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.access_connector_principal_id
}
resource "databricks_metastore_data_access" "this" {
  name         = var.access_connector_name
  metastore_id = var.metastore_id
  is_default   = true

  azure_managed_identity {
    access_connector_id = var.access_connector_id
  }
}
