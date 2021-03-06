resource "azurerm_role_assignment" "sp-aks-network" {
  scope                = azurerm_virtual_network.man_vnet.id
  role_definition_name = "Network Contributor"
  principal_id         = azuread_service_principal.sp-aks.object_id
}

