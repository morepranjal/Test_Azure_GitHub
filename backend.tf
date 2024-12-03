
terraform {
  backend "azurerm" {
    resource_group_name      = "TanuRG"
    storage_account_name     = "3novteststrg"
    container_name           = "ios"
    key                      = "terraform.tfstate"
    client_id                = var.client_id
    client_secret            = var.client_secret
    subscription_id          = var.subscription_id
    tenant_id                = var.tenant_id
   # use_azuread_auth         = true
  }
}



# terraform {
#   backend "azurerm" {
#     resource_group_name      = "TanuRG"
#     storage_account_name     = "3novteststrg"
#     container_name           = "ios"
#     key                      = "terraform.tfstate"
#     # client_id                = "45b5de6f-333e-4e0b-9146-441630f7a13a"
#     # client_secret            = "CP78Q~XddXub5dQM_hgRim.hrj8Oi2-HTnZepb~i"
#     # subscription_id          = "505743ae-49da-49ce-b0a4-eeb2cc0f8f0e"
#     # tenant_id                = "f77d0bdc-0d72-4b3d-8d8c-d87448c17ef8"
#    # use_azuread_auth         = true
#   }
# }





# terraform {
#   required_version = "4.12.0"

#   backend "azurerm" {
#     resource_group_name  = "TanuRG"
#     storage_account_name = "3novteststrg"
#     container_name       = "ios"
#     key                  = "terraform.tfstate"
#   }
# }
