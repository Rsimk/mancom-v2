resource "random_string" "sp-aks-password" {
  length  = 24
  special = true
}

resource "random_string" "sp-aks-secret" {
  length  = 24
  special = true
}

resource "azuread_application" "sp-aks" {
  display_name = "sp-aks-${var.prefix}-k8s-${var.env_prefix}"
}

resource "azuread_service_principal" "sp-aks" {
  application_id               = azuread_application.sp-aks.application_id
  app_role_assignment_required = false
}

resource "azuread_service_principal_password" "sp-aks" {
  service_principal_id = azuread_service_principal.sp-aks.id
  end_date_relative    = "8760h"
}

resource "azuread_application_password" "sp-aks" {
  application_object_id = azuread_application.sp-aks.id
  end_date_relative     = "8760h"
}

