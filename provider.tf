terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  #client_id       = "45b5de6f-333e-4e0b-9146-441630f7a13a"
  #client_secret   = "CP78Q~XddXub5dQM_hgRim.hrj8Oi2-HTnZepb~i"
  #tenant_id       = "f77d0bdc-0d72-4b3d-8d8c-d87448c17ef8"
  subscription_id = "505743ae-49da-49ce-b0a4-eeb2cc0f8f0e"
}
