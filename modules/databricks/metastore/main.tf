resource "azurerm_resource_group" "this" {
  name     = "${var.name}-rg"
  location = var.location

  tags = var.tags
}
module "storage" {
  source = "../../azure/datalake-gen2"

  name                            = var.storage_account_name
  resource_group_name             = azurerm_resource_group.this.name
  location                        = azurerm_resource_group.this.location
  account_tier                    = "Standard"
  access_tier                     = "Hot"
  account_replication_type        = "GRS"
  public_network_access_enabled   = true
  allow_nested_items_to_be_public = true
  tags                            = var.tags
}
resource "azurerm_storage_container" "this" {
  name                  = "metastore"
  storage_account_name  = module.storage.storage_account.name
  container_access_type = "private"
}
resource "databricks_metastore" "this" {
  name          = var.name
  storage_root  = format("abfss://%s@%s.dfs.core.windows.net/", azurerm_storage_container.this.name, module.storage.storage_account.name)
  force_destroy = var.force_destroy
}
