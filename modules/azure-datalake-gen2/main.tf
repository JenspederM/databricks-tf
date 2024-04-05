data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "this" {
  name                             = var.name
  resource_group_name              = var.resource_group_name
  location                         = data.azurerm_resource_group.this.location
  account_tier                     = var.account_tier
  account_replication_type         = var.account_replication_type
  account_kind                     = "StorageV2"
  cross_tenant_replication_enabled = false
  access_tier                      = var.access_tier
  enable_https_traffic_only        = true
  sftp_enabled                     = var.sftp_enabled
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public
  public_network_access_enabled    = var.public_network_access_enabled
  is_hns_enabled                   = "true" // This makes the storage account a Data Lake Storage Gen2 account.

  // Enable soft delete for blobs and containers.
  blob_properties {
    delete_retention_policy {
      days = var.delete_retention_days
    }
    container_delete_retention_policy {
      days = var.container_delete_retention_days
    }
  }

  tags = var.tags
}

resource "azurerm_role_assignment" "contributors" {
  for_each = toset(var.contributors)

  scope                = azurerm_storage_account.this.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = each.value
}

resource "azurerm_role_assignment" "readers" {
  for_each = toset(var.readers)

  scope                = azurerm_storage_account.this.id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = each.value
}