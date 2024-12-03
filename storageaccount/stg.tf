

resource "azurerm_storage_account" "example" {
  name                     = "githubstgaccount56743"
  resource_group_name      = var.rg_name
  location                 = var.deploy_location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "Test"
  }
}