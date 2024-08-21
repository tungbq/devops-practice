module "vnet" {
  source = "./vnet"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
}
