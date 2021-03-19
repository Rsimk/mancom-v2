resource "azurerm_mariadb_server" "man_mariadb" {
  name                = var.mariadb_srv_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  administrator_login          = var.maria_db_admin_name
  administrator_login_password = random_string.mariadb_passwd.result

  sku_name   = "GP_Gen5_2"
  storage_mb = 162816
  version    = "10.3"

  auto_grow_enabled             = true
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = true
  public_network_access_enabled = true
  ssl_enforcement_enabled       = false

  tags = {
    client = "man.com"
    type   = "db"
  }
}

resource "random_string" "mariadb_passwd" {
  length  = 12
  upper   = true
  lower   = true
  number  = true
  special = true
}

# Enable logging. Send to LogAnalytics workspace
resource "azurerm_monitor_diagnostic_setting" "man_mariadb_log" {
  name                       = "man_mariadb_log"
  target_resource_id         = data.azurerm_mariadb_server.man_mariadb.id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.mancom.id

  log {
    category = "MySqlSlowLogs"
    enabled  = true
  }

  log {
    category = "MySqlAuditLogs"
    enabled  = true
  }

  metric {
    category = "AllMetrics"
  }
}

