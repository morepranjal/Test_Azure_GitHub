


terraform {
  backend "azurerm" {
    resource_group_name      = "TanuRG"
    storage_account_name     = "3novteststrg"
    container_name           = "ios"
    key                      = "terraform11.tfstate"

  }
}





# terraform {
#   required_version = "4.12.0"

#   backend "azurerm" {
#     resource_group_name  = "TanuRG"
#     storage_account_name = "3novteststrg"
#     container_name       = "ios"
#     key                  = "terraform.tfstate"
#   }
# }
