resource "azurerm_frontdoor" "mancom" {
  name                                         = "${var.prefix}-frontdoor"
  resource_group_name                          = azurerm_resource_group.rg.name
  enforce_backend_pools_certificate_name_check = true

  routing_rule {
    name               = "test-pip"
    accepted_protocols = ["Https", "Http"]
    patterns_to_match  = ["/*"]
    frontend_endpoints = ["mancom-frontend-ep"]
    forwarding_configuration {
      forwarding_protocol = "MatchRequest"
      backend_pool_name   = "test-pip"
    }
  }

  routing_rule {
    name               = "www"
    accepted_protocols = ["Https", "Http"]
    patterns_to_match  = ["/*"]
    frontend_endpoints = ["www-frontend-ep"]
    forwarding_configuration {
      forwarding_protocol = "MatchRequest"
      backend_pool_name   = "static-website"
    }
  }

  backend_pool_load_balancing {
    name = "backend-pool-LB-config"
  }

  backend_pool_health_probe {
    name = "backend-pool-health-probe-config"
  }

  backend_pool {
    name = "test-pip"
    backend {
      address     = azurerm_public_ip.backend_access.ip_address
      http_port   = 80
      https_port  = 443
      host_header = "test-pip"
    }
    load_balancing_name = "backend-pool-LB-config"
    health_probe_name   = "backend-pool-health-probe-config"
  }

  backend_pool {
    name = "static-website"
    backend {
      address     = "csa1003bffdae8a4319.z16.web.core.windows.net"
      http_port   = 80
      https_port  = 443
      host_header = "csa1003bffdae8a4319"
    }
    load_balancing_name = "backend-pool-LB-config"
    health_probe_name   = "backend-pool-health-probe-config"
  }

  frontend_endpoint {
    name      = "mancom-frontend-ep"
    host_name = "test-fe-ep.ccit.lt"
  }

  frontend_endpoint {
    name      = "default"
    host_name = "man-frontdoor.azurefd.net"
  }

  frontend_endpoint {
    name      = "www-frontend-ep"
    host_name = "www.ccit.lt"
  }

/*   depends_on = [
    azurerm_key_vault.man-fd-ssl
  ]
 */
}
# add custom domain SSL to frontdoor frontend endpoint
# certificate has to be imported as PXF file to Key Vault as secret
resource "azurerm_frontdoor_custom_https_configuration" "www_custom_ssl_cert" {
  frontend_endpoint_id              = azurerm_frontdoor.mancom.frontend_endpoint[2].id
  custom_https_provisioning_enabled = true

  custom_https_configuration {
    certificate_source                      = "AzureKeyVault"
    azure_key_vault_certificate_secret_name = "www-ccit-lt-ssl"
    azure_key_vault_certificate_vault_id    = data.azurerm_key_vault.man-fd-ssl.id
  }
}

# key vault for storing SSL certificate
resource "azurerm_key_vault" "man-fd-ssl" {
  name                = "kv-fd-ssl"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

}
data "azurerm_key_vault" "man-fd-ssl" {
  name = "kv-fd-ssl"
  resource_group_name = azurerm_resource_group.rg.name

}
# give Front Door (Microsoft.Azure.Frontdoor) Get permission to Key Vault certificate
# register Front Door service principle with powershell command: 
# New-AzADServicePrincipal -ApplicationId "ad0e1c7e-6d38-4ba4-9efd-0bc77ba9f037"
resource "azurerm_key_vault_access_policy" "fd_access_ssl" {
  key_vault_id = azurerm_key_vault.man-fd-ssl.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "ad0e1c7e-6d38-4ba4-9efd-0bc77ba9f037"

  certificate_permissions = [
    "Get",
  ]
  secret_permissions = [
    "Get",
  ]

}
# backend public IP address
resource "azurerm_public_ip" "backend_access" {
  name                = "backend_pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  allocation_method   = "Static"

}
# apply this NSG on subnet or NIC behind backend Public IP
# Azure front door backend IP subnet list based on Microsoft official list at https://www.microsoft.com/download/details.aspx?id=56519
# service tag IP subnet list: AzureFrontDoor.Backend
# filter on 'X-Azure-FDID' on backend web host or proxy should be implemented too
resource "azurerm_network_security_group" "frontdoor_backend_ip_subnet_http_s" {
  name                = "nsg-permit-frontdoor-backend-http_s"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule = [{
    access                                     = "Allow"
    description                                = "HTTP and HTTPS allowed"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = ""
    destination_port_ranges                    = ["80", "443"]
    direction                                  = "Inbound"
    name                                       = "http_https"
    priority                                   = 100
    protocol                                   = "Tcp"
    source_port_range                          = "*"
    source_port_ranges                         = []
    source_application_security_group_ids      = []
    source_address_prefix                      = "AzureFrontDoor.backend"
    source_address_prefixes                    = []
  }]

}