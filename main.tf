terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
 backend "azurerm" {
    resource_group_name  = "dkcstate-rg"
    storage_account_name = "dkcstorageaccount"
    container_name       = "dkccontainer"
    key                  = "git_terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}
resource "azurerm_resource_group" "RG-01" {
  name     = "dkc-rg-01"
  location = "West Europe"
}


