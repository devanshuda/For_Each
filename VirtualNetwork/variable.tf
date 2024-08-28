variable "virtual_network_name" {
	description = "The name of the virtual network"
	type = string
}

variable "virtual_network_address_space" {
	description = "The address space of the virtual network"
	type = list(string)
}

variable "resource_group_name" {

}

variable "location" {

}