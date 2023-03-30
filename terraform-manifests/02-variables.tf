variable "location" {
  type        = string
  default     = "Central US"
  description = "Azure Region where all these resources will be provisioned"
}

variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
  default     = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type        = string
  description = "This variable defines the Environment"
  default     = "dev"
}

# AKS Input Variables

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default     = "D:\\Drive_upload\\2022-practice\\Udemy\\az-aks-masterclass-stacksimplify\\own\\aks-terraform\\keys\\ssh_keys.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type        = string
  default     = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type        = string
  default     = "P@ssw0rd123456"
  description = "This variable defines the Windows admin password k8s Worker nodes"
}