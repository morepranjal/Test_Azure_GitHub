# data "azurerm_key_vault" "keyvault_devops" {
#  name                = "github-test"
#  resource_group_name = "TerraformGitHubRG2"
# }

# data "azurerm_key_vault_secrets" "global_devops" {
#  key_vault_id = data.azurerm_key_vault.keyvault_devops.id
# }

# data "azurerm_key_vault_secret" "global_devops" {
#  for_each     = toset(data.azurerm_key_vault_secrets.global_devops.names)
#  name         = each.key
#  key_vault_id = data.azurerm_key_vault.keyvault_devops.id
# }

# output "secret_value" {
#   value = { for key, secret in data.azurerm_key_vault_secret.global_devops : key => secret.value }
#   #sensitive = true
# }

# data "azurerm_key_vault" "existing" {
#  name                = "github-test"
#  resource_group_name = "TerraformGitHubRG2"
# }

# data "azurerm_key_vault_secret" "example" {
#   name         = "subscriptionid"
#   key_vault_id = data.azurerm_key_vault.existing.id
# }

# output "secret_value" {
#   value = nonsensitive(data.azurerm_key_vault_secret.example.value)
# }


#     data "azurerm_key_vault" "example" {
#      name                = "github-test"
#      resource_group_name = "TerraformGitHubRG2"
#     }
    
#     data "azurerm_key_vault_secret" "subscription_id" {
#       name         = "subscriptionid"
#       key_vault_id = data.azurerm_key_vault.example.id
#     }
#     data "azurerm_key_vault_secret" "tenant_id" {
#       name         = "tenantid"
#       key_vault_id = data.azurerm_key_vault.example.id
#     }

#   output "secret_value" {
# value = nonsensitive(data.azurerm_key_vault_secret.example.value)
# }