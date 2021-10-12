resource "azurerm_network_interface" "db_backup_vm_nic" {
  name                = "${var.prefix}-db-backup-vm-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  enable_accelerated_networking = true

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.default.id
    private_ip_address_allocation = "Dynamic"
	public_ip_address_id = azurerm_public_ip.db_backup_vm_ip.id
  }
}

resource "azurerm_network_interface_security_group_association" "db_backup_vm_nsg" {
  network_interface_id      = azurerm_network_interface.db_backup_vm_nic.id
  network_security_group_id = azurerm_network_security_group.db_backup_vm_nsg.id
}

resource "azurerm_linux_virtual_machine" "db_backup_vm" {
  name                = "${var.prefix}-db-backup-vm-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  size                = "Standard_D4s_v3"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.db_backup_vm_nic.id,
  ]

  depends_on = [ azurerm_network_interface_security_group_association.db_backup_vm_nsg ]

  # ssh key have to generated before applying this terraform configuration
  admin_ssh_key {
    username   = "azureuser"
    public_key = azurerm_ssh_public_key.db_backup_vm_key.public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 30
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku = "20_04-lts-gen2"
    version = "latest"
  }

  boot_diagnostics {
  }
}

resource "azurerm_public_ip" "db_backup_vm_ip" {
  name                = "${var.prefix}-db-backup-vm-ip-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = "Static"
  domain_name_label   =  "${var.prefix}-db-backup-vm-${var.env_prefix}"

  tags = {
    environment = var.env_prefix
  }
}

resource "azurerm_ssh_public_key" "db_backup_vm_key" {
  name                = "${var.prefix}-db-backup-vm-key-${var.env_prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  public_key          = file("~/.ssh/1624653028_2240496.pub")
}