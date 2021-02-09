resource "azurerm_container_registry" "acr" {
  name                = "${var.prefix}Registry"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}
