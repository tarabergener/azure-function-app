provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = vars.resource_group_name
  location = vars.location

  tags = {
    environment = "dev"
    source      = "Terraform"
    owner       = "Tara Bergener"
  }
}

