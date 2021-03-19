resource "azurerm_mariadb_configuration" "long_query_time" {
  name                = "long_query_time"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = var.mariadb_srv_name
  value               = "1"
  depends_on = [azurerm_mariadb_server.man_mariadb]
}

resource "azurerm_mariadb_configuration" "query_cache_limit" {
  name                = "query_cache_limit"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = var.mariadb_srv_name
  value               = "0"
  depends_on = [azurerm_mariadb_server.man_mariadb]
}

resource "azurerm_mariadb_configuration" "query_cache_type" {
  name                = "query_cache_type"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = var.mariadb_srv_name
  value               = "ON"
  depends_on = [azurerm_mariadb_server.man_mariadb]
}

