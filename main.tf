terraform {
  required_version = ">= 1.1.0"

  cloud {
    organization = "Azure-Cloud-Space" 

    workspaces { 
      name = "Azure-impl" 
    } 
  }
}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "main" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"

  # tags = {
  #   environment = "dev"
  # }
}
