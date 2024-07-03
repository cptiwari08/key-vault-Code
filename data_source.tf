data "azurerm_subnet" "datasubnet" {
  for_each             = var.vm_map
  name                 = each.value.data_name
  virtual_network_name = each.value.data_virtual_network_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_key_vault" "keyvault" {
  name                = "keyvaut01"
  resource_group_name = "rg-frontend-prod-ci-01"
}

data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "passwd" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
