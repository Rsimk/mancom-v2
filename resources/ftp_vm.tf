resource "azurerm_linux_virtual_machine" "ftp_gateway" {
  name                = "${var.prefix}-ftp-gateway-vm-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  size                = "Standard_B1ms"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.ftp_gateway_nic.id,
  ]

  depends_on = [ azurerm_network_interface_security_group_association.ftp_nic_nsg ]

  # ssh key have to generated before applying this terraform configuration
  admin_ssh_key {
    username   = "azureuser"
    public_key = azurerm_ssh_public_key.ftp_gateway_vm_key.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 30
  }

  source_image_reference {
    publisher = "thorntechnologiesllc"
    offer     = "sftpgateway"
    sku       = "sftpgateway"
    version   = "latest"
  }

  plan {
    publisher = "thorntechnologiesllc"
    name = "sftpgateway"
    product = "sftpgateway"
  }

  boot_diagnostics {
  }
}

resource "azurerm_network_interface" "ftp_gateway_nic" {
  name                = "${var.prefix}-ftp-gateway-nic-${var.env_prefix}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.default.id
    private_ip_address_allocation = "Dynamic"
	public_ip_address_id = azurerm_public_ip.man_ftp_srv_ip.id
  }
}

resource "azurerm_network_interface_security_group_association" "ftp_nic_nsg" {
  network_interface_id      = azurerm_network_interface.ftp_gateway_nic.id
  network_security_group_id = azurerm_network_security_group.man_ftp_srv.id
}
# need to acknowledge agreement before deploying image from marketplace
resource "azurerm_marketplace_agreement" "thorntechologieslls" {
  publisher = "thorntechnologiesllc"
  offer     = "sftpgateway"
  plan      = "hourly"
}

resource "azurerm_public_ip" "man_ftp_srv_ip" {
  name                = "${var.prefix}-ftp-gateway-vm-ip-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = "Static"
  domain_name_label   =  "${var.prefix}-sftp"

  tags = {
    environment = var.env_prefix
  }
}

resource "azurerm_ssh_public_key" "ftp_gateway_vm_key" {
  name                = "${var.prefix}-ftp-gateway-vm-key-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  public_key          = file("~/.ssh/1625164765_1437535.pub")
}
