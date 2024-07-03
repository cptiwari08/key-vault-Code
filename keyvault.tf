data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  for_each = var.keyvault_map
  name     = each.value.rg_name
  location = each.value.location
}

resource "azurerm_key_vault" "example" {
  for_each                        = var.keyvault_map
  name                            = each.value.keyvault_name
  location                        = each.value.location
  resource_group_name             = each.value.rg_name
  enabled_for_disk_encryption     = false
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days      = 90
  purge_protection_enabled        = false
  public_network_access_enabled   = true
  enabled_for_deployment          = false
  enabled_for_template_deployment = false
  enable_rbac_authorization       = true

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id


    key_permissions = []


    secret_permissions = []

    storage_permissions = []
  }
}