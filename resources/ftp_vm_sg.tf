resource "azurerm_network_security_group" "man_ftp_srv" {
  name                = "${var.prefix}-ftp-gateway-vm-nsg-${var.env_prefix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "SSH_Petras_IP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges     = ["22", "80", "443"]
    source_address_prefix      = "78.61.196.174/32"
    destination_address_prefix = "*"
  }

   security_rule {
    name                       = "Liutauras"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "78.61.252.91/32"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "man_user1"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "80.70.55.2/32"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "man_users2"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "80.70.52.0/24"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "man_users3"
    priority                   = 104
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "80.70.54.0/24"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "man_user4"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "192.104.20.222/32"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "man_user5"
    priority                   = 106
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "203.223.178.222/32"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Mettasite Offise"
    priority                   = 107
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80", "443"]
    source_address_prefix      = "88.119.94.17/32"
    destination_address_prefix = "*"
  }
  
  security_rule {
    name                       = "Uat Kubernetes 1"
    priority                   = 108
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "20.73.142.224/32"
    destination_address_prefix = "*"
  }
  
  security_rule {
    name                       = "Uat Kubernetes 2"
    priority                   = 109
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "51.138.45.208/32"
    destination_address_prefix = "*"
  }
  
  security_rule {
    name                       = "Aurimas Home"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["22", "80", "443"]
    source_address_prefix      = "78.57.64.120/32"
    destination_address_prefix = "*"
  }
}