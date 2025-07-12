terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b7df65c6-7c4d-4e35-983d-cd66eea0573a"
}
resource "azurerm_resource_group" "RG-01" {
  name     = "dkc-rg-01"
  location = "West Europe"
}

resource "azurerm_resource_group" "RG-02" {
  name     = "dkc-rg-02"
  location = "West Europe"
}
resource "azurerm_resource_group" "RG-03" {
  name     = "dkc-rg-03"
  location = "central india"
}
resource "azurerm_resource_group" "RG-04" {
  name     = "dkc-rg-04"
  location = "West Europe"
}

