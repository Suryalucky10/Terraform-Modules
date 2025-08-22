provider "azurerm" {
        features{}
        subscription_id = "0a33ca55-5707-4ac6-b698-f77235fa383b"
}

module "resource_group" {
  source   = "./Modules/resource_group"
  resource_group_name  = "example-rg"
  location = "Central India"
}

module "VNet" {
  source         = "./Modules/VNet"
  virtual_network_name      = "example-vnet"
  location       = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

module "VM" {
        source = "./Modules/VM"
        Vm_name = "My-vm"
        location = module.resource_group.resource_group_location
        resource_group_name = module.resource_group.resource_group_name
}

output "virtual_network_name" {
  value = module.VNet.virtual_network_name
}



