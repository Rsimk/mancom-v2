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
	"List",
	"Set",
	"Delete",
  ]
}

resource "azurerm_key_vault_access_policy" "julius-paradnikas" {
  key_vault_id = azurerm_key_vault.man-bl.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "0de8cbf9-e1a2-4053-9f98-5b78049217d2"

  key_permissions = [
    "Get",
	"List"
  ]

  secret_permissions = [
    "Get",
	"List",
	"Set",
	"Delete",
  ]
}

resource "azurerm_key_vault" "man-xbus" {
  name                       = "man-xbus-${var.env_prefix}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90

  sku_name = "standard"
}

resource "azurerm_key_vault_access_policy" "man-xbus" {
  key_vault_id = azurerm_key_vault.man-xbus.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "e0ff0447-b63b-48aa-b327-3c19ccd58f4b" //temp sp account for access

  key_permissions = [
    "Get",
	"List"
  ]

  secret_permissions = [
    "Get",
	"List"
  ]
}

resource "azurerm_key_vault_access_policy" "aurimas-bachanovicius" {
  key_vault_id = azurerm_key_vault.man-xbus.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "ab8f48d1-e884-4f10-83c4-00f971203c05"

  key_permissions = [
    "Get",
	"List",
	"Import",
	"Delete",
  ]

  secret_permissions = [
    "Get",
	"List",
	"Set",
	"Delete",
  ]
}
