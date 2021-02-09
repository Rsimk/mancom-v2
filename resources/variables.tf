variable "prefix" {
  description = "prefix for naming in this deployment"
}

variable "env_prefix" {
  description = "Environment prefix name. Example: dev, prod"
}

variable "location" {
  description = "default location for all Azure resources if not specified otherwise"
}

variable "resource_group_name" {
  description = "Resource group name, that holds all resources"
}

variable "acradminuser" {
  description = "Azure container register admin username"
}

# ssh key is generate in the bash script run before terraform deployment
variable "public_ssh_key_path" {
  description = "The Path at which your Public SSH Key is located. Defaults to ~/.ssh/id_rsa.pub"
}

variable "maria_db_admin_name" {
  description = "Maria DB admin login name"
}

variable "mariadb_srv_name" {
  description = "Maria DB server name"
}

variable "test_prefix" {
  description  = "Used while testing for global unique names"
}
