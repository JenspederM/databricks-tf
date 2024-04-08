terraform {
  required_version = "1.6.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.98" # Set the version here
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.47" # Set the version here
    }
  }
}
