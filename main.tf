terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "exampleMoibaldenegro" {
  name     = "moibaldenegro-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vrMoibaldenegro" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.exampleMoibaldenegro.name
  location            = azurerm_resource_group.exampleMoibaldenegro.location
  address_space       = ["10.0.0.0/16"]
}
