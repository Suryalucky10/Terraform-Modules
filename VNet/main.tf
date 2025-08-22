resource "azurerm_virtual_network" "this" {
	name = var.virtual_network_name
	location = var.location
	resource_group_name = var.resource_group_name
	address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "this" {
	name = "subnet1"
	address_prefixes = ["10.0.2.0/24"]
	virtual_network_name = azurerm_virtual_network.this.name
	resource_group_name = var.resource_group_name
}

