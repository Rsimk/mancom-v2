resource "azurerm_virtual_network" "man_vnet" {
  name                = "${var.prefix}-vnet-${var.env_prefix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "default" {
  name                                           = "${var.prefix}-subnet"
  resource_group_name                            = azurerm_resource_group.rg.name
  address_prefixes                               = ["172.16.0.0/24"]
  virtual_network_name                           = azurerm_virtual_network.man_vnet.name
  enforce_private_link_service_network_policies  = false
  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "cluster" {
  name                 = "${var.prefix}-aks-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  address_prefixes     = ["172.16.1.0/24"]
  virtual_network_name = azurerm_virtual_network.man_vnet.name
}

