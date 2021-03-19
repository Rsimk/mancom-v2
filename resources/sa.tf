resource "azurerm_storage_account" "manbldoc" {
  name                     = "manbldocumentsstorage${var.env_prefix}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "manbldoc_documents" {
  name                 = "documents"
  storage_account_name = azurerm_storage_account.manbldoc.name
}

resource "azurerm_storage_container" "manbldoc_ftp_vm" {
  name                 = "man-ftp-gateway-vm"
  storage_account_name = azurerm_storage_account.manbldoc.name
}

resource "azurerm_storage_container" "manbldoc_events" {
  name                 = "undelivered-events"
  storage_account_name = azurerm_storage_account.manbldoc.name
}

resource "azurerm_storage_account" "mancmsdoc" {
  name                     = "mancmsstorage${var.env_prefix}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
}

resource "azurerm_storage_container" "mancms_shared_data" {
  name                 = "shared-cms-data"
  storage_account_name = azurerm_storage_account.mancmsdoc.name
}

resource "azurerm_storage_container" "cms-files" {
  name                 = "cms-files"
  storage_account_name = azurerm_storage_account.mancmsdoc.name
}

