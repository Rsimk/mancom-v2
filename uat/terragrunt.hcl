terraform {
  source = "..//resources"
}

include {
  path = find_in_parent_folders()
}

#Resource naming convention comes with env_prefix name.
  inputs = {
  prefix = "manv2"
  env_prefix = "uat"
  location = "West Europe"
  acradminuser = "manPocRegistryUat"
  public_ssh_key_path = "~/.ssh/id_rsa_aks.pub"
  resource_group_name = "man-v2"
  kubernetes_version = "1.18.14"
  kubernetes_vm_size = "Standard_E2s_v4"
  sftpUser = "man_ftp_admin"
  sftpPassword = "$6$hvi8pe7hOT7wmxA/$JGp/dCrrgunuOkYgEunk5jjbsk98yoY5VABYYLxIgA0l6gZViS.S05sjsOKDprasO7tuJSQamc/DkP/8McQf9/"
}
