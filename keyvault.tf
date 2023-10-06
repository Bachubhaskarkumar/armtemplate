data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                        = "harsha1612"
  location                    = azurerm_resource_group.harsha-rg.location
  resource_group_name         = azurerm_resource_group.harsha-rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id


    secret_permissions = [
      "Get",
      "Set",
      "Delete",
      "Recover",
      "Purge"
    ]


  }
}

resource "azurerm_key_vault_secret" "secret" {
  name         = "vmpassword"
  value        = "Geethika@143"
  key_vault_id = azurerm_key_vault.vault.id
  depends_on = [ 
    azurerm_key_vault.vault 
  ]
}