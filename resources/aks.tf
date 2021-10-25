resource "azurerm_kubernetes_cluster" "man_aks" {
  name                = "${var.prefix}-k8s-${var.env_prefix}"
  location            = var.location
  dns_prefix          = var.prefix
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version  = var.kubernetes_version

  tags = {
    environment = var.env_prefix
  }

  linux_profile {
    admin_username = "azureuser"

    ssh_key {
      key_data = file(var.public_ssh_key_path)
    }
  }

  default_node_pool {
    name                 = "default"
    orchestrator_version = var.kubernetes_version
    vm_size              = var.kubernetes_vm_size
    availability_zones   = ["1", "2"]
    enable_auto_scaling  = true
    min_count            = 1
    max_count            = 2
    os_disk_size_gb      = 128

    # Required for advanced networking
    vnet_subnet_id = azurerm_subnet.cluster.id
  }

  service_principal {
    client_id     = azuread_service_principal.sp-aks.application_id
    client_secret = azuread_service_principal_password.sp-aks.value
  }

  network_profile {
    network_plugin = "azure"
  }

  addon_profile {
    oms_agent {
      # enable nodes information logging  
      enabled                    = true
      log_analytics_workspace_id = azurerm_log_analytics_workspace.mancom.id
    }
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "manv2_pool" {
  name                  = "${var.prefix}pool${var.env_prefix}"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.man_aks.id
  orchestrator_version  = var.kubernetes_version
  vm_size               = var.kubernetes_vm_size

  # place cluster nodes in two separate AZ's to guarantee 99.95% SLA
  availability_zones  = ["1", "2"]
  enable_auto_scaling = true
  min_count           = 1
  max_count           = 2
  os_type             = "Linux"
  os_disk_size_gb     = 128

  # Required for advanced networking
  vnet_subnet_id = azurerm_subnet.cluster.id
}

