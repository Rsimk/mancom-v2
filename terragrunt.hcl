remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }
  config = {
    key = "${path_relative_to_include()}/terraform.tfstate"
	resource_group_name = "tfstate-rg"
    storage_account_name = "tf1129927218st1"
    container_name = "tfstate"
  }
}