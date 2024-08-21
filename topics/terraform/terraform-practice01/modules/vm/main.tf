module "vm" {
  source = "./vm"

  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  vnet_subnet_id      = var.vnet_subnet_id
}
