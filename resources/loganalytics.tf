resource "azurerm_log_analytics_workspace" "mancom" {
  name                = "${var.prefix}-law"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 90
}

resource "azurerm_log_analytics_solution" "man_k8s_containerinsights" {
  solution_name         = "ContainerInsights"
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  workspace_resource_id = azurerm_log_analytics_workspace.mancom.id
  workspace_name        = azurerm_log_analytics_workspace.mancom.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
