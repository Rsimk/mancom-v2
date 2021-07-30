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
  kubernetes_version = "1.19.9"
  kubernetes_vm_size = "Standard_E2s_v4"
  document_upload_webhook_url = "https://manv2-documents-stage.metasite.lt/webhooks/documents/sync" //?accessToken=
}
