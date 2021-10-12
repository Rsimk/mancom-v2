resource "azurerm_monitor_action_group" "main" {
  name                = "main-actiongroup-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  short_name          = "exampleact"

  webhook_receiver {
    name        = "from-logic-app"
    service_uri = var.alert_logic_app_webhook
  }
}

resource "azurerm_monitor_metric_alert" "cpu_usage" {
  name                = "mariadb-server-average-cpu-usage-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  scopes              = [azurerm_mariadb_server.man_mariadb.id]
  description         = "MariaDB server average CPU percentage is greater than 80%"

  criteria {
    metric_namespace = "Microsoft.DBforMariaDB/servers"
    metric_name      = "cpu_percent"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = azurerm_monitor_action_group.main.id
  }
}

