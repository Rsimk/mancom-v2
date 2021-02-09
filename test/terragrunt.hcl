terraform {
  source = "git::git@github.com:Metasiteorg/man-v2-terraform.git//resources?ref=v0.0.5"
}

include {
  path = find_in_parent_folders()
}

  inputs = {
  prefix = "mancom"
  location = "West Europe"
  acradminuser = "manPocRegistry"
  public_ssh_key_path = "~/.ssh/id_rsa_aks.pub"
  maria_db_admin_name = "mandbadmin"
  mariadb_srv_name = "man-poc-db-test-1"
  test_prefix = "mancomtest"
  env_prefix = "test"
  resource_group_name = "man-com"
}