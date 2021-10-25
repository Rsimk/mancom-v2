variable "prefix" {
  description = "prefix for naming in this deployment"
  default     = "man"
}

variable "env_prefix" {
  description = "Environment prefix name. Example: dev, prod"
  default     = "prod"
}

variable "location" {
  description = "default location for all Azure resources if not specified otherwise"
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Resource group name, that holds all resources"
  default     = "rg-mancom_please_delete"
}

variable "acradminuser" {
  description = "Azure container register admin username"
  default     = "acradmin"
}

# ssh key is generate in the bash script run before terraform deployment
variable "public_ssh_key_path" {
  description = "The Path at which your Public SSH Key is located. Defaults to ~/.ssh/id_rsa.pub"
  default     = "~/.ssh/id_rsa.pub"
}

variable "kubernetes_version" {
  description = "Set kubernetes version"
  default     = "1.20.9"
}

variable "kubernetes_vm_size" {
  description = "Kubernetes pool vm size"
  default     = "Standard_D2_v2"
}

variable "document_upload_webhook_url" {
  description = "Document upload event subscription webook url "
  default     = "https://manv2-documents-stage.metasite.lt/webhooks/documents/sync?"
}