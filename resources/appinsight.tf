resource "azurerm_application_insights" "man-bl" {
  name                = "man-bl-insights-${var.env_prefix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"
}