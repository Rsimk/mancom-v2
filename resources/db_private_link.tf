/* resource "azurerm_private_endpoint" "db_private" {
  name                = "man-kubernetes-to-db-${var.env_prefix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = azurerm_subnet.default.id

  private_service_connection {
    name                           = "man-kubernetes-to-db-${var.env_prefix}"
    private_connection_resource_id = "/subscriptions/c47c194f-0987-40d0-b8fe-0a2086a01dc8/resourceGroups/man-v2-dev/providers/Microsoft.DBforMariaDB/servers/manv2-db-dev"
    is_manual_connection           = true
    subresource_names              = ["mariadbServer"]
  }

  private_dns_zone_group {
    name                 = azurerm_private_dns_zone.mariadb.name
    private_dns_zone_ids = [azurerm_private_dns_zone.mariadb.id]
  }
}

resource "azurerm_private_dns_zone" "mariadb" {
  name                = "privatelink.mariadb.database.azure.com"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  name                  = "VirtualNetworklink"
  resource_group_name   = azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.mariadb.name
  virtual_network_id    = azurerm_virtual_network.man_vnet.id
}

 */