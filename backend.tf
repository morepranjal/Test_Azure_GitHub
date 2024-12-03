


terraform {
  backend "azurerm" {
    resource_group_name      = "TanuRG"
    storage_account_name     = "3novteststrg"
    container_name           = "ios"
    key                      = "terraform1234.tfstate"

  }
}




