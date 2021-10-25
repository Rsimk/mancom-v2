resource "azuread_application" "sp-xbus-cli" {
  display_name = "sp-xbus-cli-${var.env_prefix}"
}

resource "azuread_service_principal" "sp-xbus-cli" {
  application_id               = azuread_application.sp-xbus-cli.application_id
  app_role_assignment_required = false
}

resource "azuread_service_principal_password" "sp-xbus-cli" {
  service_principal_id = azuread_service_principal.sp-man-bl.id
}

resource "azuread_application_password" "sp-xbus-cli" {
  application_object_id = azuread_application.sp-man-bl.id
  end_date_relative     = "8760h"
}