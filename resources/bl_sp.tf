resource "azuread_application" "sp-man-bl" {
  display_name = "${var.prefix }-bl-${var.env_prefix}"
}

resource "azuread_service_principal" "sp-man-bl" {
  application_id               = azuread_application.sp-man-bl.application_id
  app_role_assignment_required = false
}

resource "azuread_service_principal_password" "sp-man-bl" {
  service_principal_id = azuread_service_principal.sp-man-bl.id
  end_date_relative    = "8760h"
}

resource "azuread_application_password" "sp-man-bl" {
  application_object_id = azuread_application.sp-man-bl.id
  end_date_relative     = "8760h"
}