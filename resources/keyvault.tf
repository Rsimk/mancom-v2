resource "azurerm_key_vault" "man-bl" {
  name                       = "man-bl-${var.env_prefix}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90

  sku_name = "standard"
}

resource "azurerm_key_vault" "man-qa" {
  name                       = "man-qa-${var.env_prefix}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90

  sku_name = "standard"
}

resource "azurerm_key_vault" "man-staging" {
  name                       = "man-staging-${var.env_prefix}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = var.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 90

  sku_name = "standard"
}


