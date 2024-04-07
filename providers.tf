terraform {
  required_version = "1.6.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.98" # Set the version here
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~>1.31"
    }
  }
}
provider "azurerm" {
  features {}
}

provider "databricks" {
  alias = "workspace"
  host  = module.workspace.workspace_url
}
provider "databricks" {
  alias      = "account"
  account_id = "change-me"
}