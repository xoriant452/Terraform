resource "azurerm_resource_group" "example" {
  name     = "terraform-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "terraform-storage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}