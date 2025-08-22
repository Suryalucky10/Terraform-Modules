variable "location" {
	description = "Azure region where the resources will be stored"
	type = string
	default = "Central India"
}

variable "resource_group_name" {
	description = "Name of the resource group"
	type= string
}

variable "virtual_network_name" {
	description = "Name of the virtual network"
	type = string
}

