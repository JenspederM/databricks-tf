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
  sftp_enabled                     = var.enable_sftp
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public
  public_network_access_enabled    = var.public_network_access_enabled
  is_hns_enabled                   = "true" // This makes the storage account a Data Lake Storage Gen2 account.

  // Enable soft delete for blobs and containers.
  blob_properties {
    delete_retention_policy {
      days = 14
    }
    container_delete_retention_policy {
      days = 7
    }
  }

  tags = var.tags
}