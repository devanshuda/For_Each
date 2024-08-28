variable "network_interface_name" {
	description = "The name of the network interface"
	type = string
}

variable "resource_group_name" {

}

variable "location" {

}

variable "nic_ip_configuration_name" {
	description = "The name of the network interface's ip configuration"
	type = string
}

variable "subnet_id" {

}

variable "nic_ip_configuration_private_ip_address_allocation" {
	description = "The private IP address allocation of the network interface's ip configuration"
	type = string
}