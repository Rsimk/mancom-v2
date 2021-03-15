resource "azurerm_key_vault" "man-bl" {
  name                       = "man-bl-${var.env_prefix}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90

  sku_name = "standard"
}

resource "azurerm_key_vault_access_policy" "man-bl" {
  key_vault_id = azurerm_key_vault.man-bl.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = azuread_service_principal.sp-man-bl.object_id

  key_permissions = [
    "Get",
	"List"
  ]

  secret_permissions = [
    "Get",
	"List"
  ]
}

resource "azurerm_key_vault_access_policy" "petras-dicpinigaitis" {
  key_vault_id = azurerm_key_vault.man-bl.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "f37a7618-5f18-4590-a6ec-91c2000081ef"

  key_permissions = [
    "Get",
	"List"
  ]

  secret_permissions = [
    "Get",
	"List"
  ]
}

