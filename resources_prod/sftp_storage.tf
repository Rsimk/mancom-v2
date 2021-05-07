resource "azurerm_storage_account" "mansftpstorage" {
  name                     = "manv2sftpstorage${var.env_prefix}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_share" "sftpfileshare" {
  name                 = "sftpfileshare"
  storage_account_name = azurerm_storage_account.mansftpstorage.name
}