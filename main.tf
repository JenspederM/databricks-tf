module "workspace" {
  source = "./modules/azure/databricks-workspace"

  name                            = "databricks-workspace"
  location                        = var.location
  vnet_name                       = "databricks-vnet"
  vnet_address_space              = ["10.0.0.0/16"]
  private_subnet_address_prefixes = ["10.0.0.0/18"]
  public_subnet_address_prefixes  = ["10.0.64.0/18"]
  tags                            = var.tags
}

module "metastore" {
  source = "./modules/databricks/metastore"
  providers = {
    databricks = databricks.account
  }

  name                 = "metastore"
  storage_account_name = "metastore"
  location             = var.location
  tags                 = var.tags
}

module "metastore_assignment" {
  source = "./modules/databricks/metastore-assignment"
  providers = {
    databricks = databricks.workspace
  }

  metastore_id                  = module.metastore.id
  metastore_storage_account_id  = module.metastore.storage_account_id
  workspace_id                  = module.workspace.workspace_id
  access_connector_id           = module.workspace.access_connector_id
  access_connector_name         = module.workspace.access_connector_name
  access_connector_principal_id = module.workspace.access_connector_principal_id
  default_catalog_name          = "default"
}