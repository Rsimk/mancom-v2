resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-${var.env_prefix}"
  location = var.location
}