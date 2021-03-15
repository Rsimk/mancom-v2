terraform {
  source = "..//resources"
}

include {
  path = find_in_parent_folders()
}

  inputs = {
  prefix = "manv2"
  env_prefix = "uat"
  location = "West Europe"
  acradminuser = "manPocRegistryUat"
  public_ssh_key_path = "~/.ssh/id_rsa_aks.pub"
  maria_db_admin_name = "mandbadmin"
  mariadb_srv_name = "man-poc-db-test-1"
  resource_group_name = "man-v2"
  kubernetes_version = "1.18.14"
  kubernetes_vm_size = "Standard_E2s_v4"
}