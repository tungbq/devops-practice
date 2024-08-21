resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  vnet_subnet_id      = module.network.subnet_id
}
