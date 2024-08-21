variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the VM"
  type        = string
}

variable "vnet_subnet_id" {
  description = "The ID of the subnet"
  type        = string
}
