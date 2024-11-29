
terraform {
  backend "azurerm" {
    storage_account_name     = "3novteststrg"
    container_name           = "ios"
    key                      = "terraform.tfstate"
    subscription_id          = "505743ae-49da-49ce-b0a4-eeb2cc0f8f0e"
    tenant_id                = "f77d0bdc-0d72-4b3d-8d8c-d87448c17ef8"
  }
}