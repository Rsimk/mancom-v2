terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.81.0"
    }
  }
}
# use azure for backend state
terraform {
  backend "azurerm" {}
}
