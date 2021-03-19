data "azurerm_client_config" "current" {
}
data "azurerm_mariadb_server" "man_mariadb" {
    name                = var.mariadb_srv_name
    resource_group_name = azurerm_mariadb_server.man_mariadb.resource_group_name

    depends_on = [ 
        azurerm_mariadb_server.man_mariadb 
        ]
}
data "azurerm_log_analytics_workspace" "mancom" {
  name                = "${var.prefix}-law"
  resource_group_name = azurerm_resource_group.rg.name
  depends_on = [ 
      azurerm_log_analytics_workspace.mancom 
      ]
}