data "azurerm_key_vault" "keyvault_devops" {
 name                = "github-test"
 resource_group_name = "TerraformGitHubRG2"
}

data "azurerm_key_vault_secrets" "global_devops" {
 key_vault_id = data.azurerm_key_vault.keyvault_devops.id
}

data "azurerm_key_vault_secret" "global_devops" {
 for_each     = toset(data.azurerm_key_vault_secrets.global_devops.names)
 name         = each.key
 key_vault_id = data.azurerm_key_vault.keyvault_devops.id
}

output "secret_value" {
  value = { for key, secret in data.azurerm_key_vault_secret.global_devops : key => secret.value }
  #sensitive = true
}