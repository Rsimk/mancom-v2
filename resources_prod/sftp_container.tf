resource "azurerm_container_group" "sftp-group" {
  name                = "sftp-group"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "public"
  dns_name_label      = "man-ftp-uat"
  os_type             = "Linux"
  restart_policy      = "OnFailure"

  container {
    name   = "sftp"
    image  = "atmoz/sftp:latest"
    cpu    = "2"
    memory = "1"

    ports {
      port     = 22
      protocol = "TCP"
    }
	
	environment_variables = {
	   SFTP_USERS = "${var.sftpUser}:${var.sftpPassword}:e:1001" 
	}
	
	volume {
	  name = "sftpvolume"
	  mount_path = "/home/${var.sftpUser}/upload"
	  read_only = false
	  share_name = azurerm_storage_share.sftpfileshare.name
	  storage_account_name = azurerm_storage_account.mansftpstorage.name
	  storage_account_key = azurerm_storage_account.mansftpstorage.primary_access_key
	}
	
  }
  
  tags = {
    environment = var.env_prefix
  }
}